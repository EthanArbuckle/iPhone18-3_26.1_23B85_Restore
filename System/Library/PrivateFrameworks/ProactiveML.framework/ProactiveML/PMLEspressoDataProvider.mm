@interface PMLEspressoDataProvider
- (PMLEspressoDataProvider)initWithRowsData:(id)a3 labelsData:(id)a4 inputName:(id)a5 inputDim:(unint64_t)a6 trueLabelName:(id)a7;
- (id)dataPointAtIndex:(unint64_t)a3 error:(id *)a4;
- (void)clearBuffers;
@end

@implementation PMLEspressoDataProvider

- (id)dataPointAtIndex:(unint64_t)a3 error:(id *)a4
{
  v39 = *MEMORY[0x277D85DE8];
  if (self->_numberOfDataPoints <= a3)
  {
    v26 = PML_LogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      numberOfDataPoints = self->_numberOfDataPoints;
      *buf = 134218240;
      v36 = a3;
      v37 = 2048;
      v38 = numberOfDataPoints;
      _os_log_error_impl(&dword_260D68000, v26, OS_LOG_TYPE_ERROR, "Out of range index %lu requested from PMLEspressoDataProvider of size %lu", buf, 0x16u);
    }

    v14 = MEMORY[0x277CBEC10];
  }

  else
  {
    [(PMLEspressoDataProvider *)self clearBuffers];
    *buf = *([(NSData *)self->_labelsData bytes]+ 4 * a3);
    [(NSMutableData *)self->_trueLabelBuffer replaceBytesInRange:0 withBytes:4, buf];
    inputDim = self->_inputDim;
    v6 = [(NSArray *)self->_rowsData objectAtIndexedSubscript:a3];
    v7 = [v6 first];
    v8 = [v7 length] >> 2;
    v9 = [(NSArray *)self->_rowsData objectAtIndexedSubscript:a3];
    v10 = [v9 first];
    v11 = [v10 bytes];
    v12 = [(NSArray *)self->_rowsData objectAtIndexedSubscript:a3];
    v13 = [v12 second];
    +[PMLSparseVector sparseVectorWithLength:numberOfNonZeroValues:isSparseIndexInt64:sparseIndices:sparseValues:toDenseValues:withLength:](PMLSparseVector, "sparseVectorWithLength:numberOfNonZeroValues:isSparseIndexInt64:sparseIndices:sparseValues:toDenseValues:withLength:", inputDim, v8, 0, v11, [v13 bytes], -[NSMutableData mutableBytes](self->_inputBuffer, "mutableBytes"), self->_inputDim);

    v14 = objc_opt_new();
    v32 = objc_alloc(MEMORY[0x277D07758]);
    v31 = [(NSMutableData *)self->_inputBuffer mutableBytes];
    v34[0] = &unk_287358250;
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_inputDim];
    v34[1] = v15;
    v34[2] = &unk_287358250;
    v34[3] = &unk_287358250;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_inputDim];
    v33[0] = v17;
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_inputDim];
    v33[1] = v18;
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_inputDim];
    v33[2] = v19;
    v33[3] = &unk_287358250;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:4];
    v21 = [v32 initWithData:v31 type:2 shape:v16 strides:v20];
    [v14 setObject:v21 forKeyedSubscript:self->_inputName];

    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_inputDim];
    v23 = [v14 objectForKeyedSubscript:self->_inputName];
    [v23 setMaxNumberOfElements:v22];

    v24 = [objc_alloc(MEMORY[0x277D07758]) initWithData:-[NSMutableData mutableBytes](self->_trueLabelBuffer type:"mutableBytes") shape:2 strides:{&unk_2873584D8, &unk_2873584F0}];
    [v14 setObject:v24 forKeyedSubscript:self->_trueLabelName];

    v25 = [v14 objectForKeyedSubscript:self->_trueLabelName];
    [v25 setMaxNumberOfElements:&unk_287358250];
  }

  v27 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)clearBuffers
{
  [(NSMutableData *)self->_inputBuffer resetBytesInRange:0, [(NSMutableData *)self->_inputBuffer length]];
  trueLabelBuffer = self->_trueLabelBuffer;
  v4 = [(NSMutableData *)trueLabelBuffer length];

  [(NSMutableData *)trueLabelBuffer resetBytesInRange:0, v4];
}

- (PMLEspressoDataProvider)initWithRowsData:(id)a3 labelsData:(id)a4 inputName:(id)a5 inputDim:(unint64_t)a6 trueLabelName:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v38.receiver = self;
  v38.super_class = PMLEspressoDataProvider;
  v17 = [(PMLEspressoDataProvider *)&v38 init];
  if (v17)
  {
    v36 = a6;
    v18 = [v14 length];
    v37 = v15;
    if ([v13 count] != v18 >> 2)
    {
      v30 = v18 >> 2;
      v31 = [MEMORY[0x277CCA890] currentHandler];
      v33 = v30;
      v15 = v37;
      [v31 handleFailureInMethod:a2 object:v17 file:@"PMLEspressoDataProvider.m" lineNumber:45 description:{@"Number of dimensions in rows data (%lu) number of labels (%lu)", objc_msgSend(v13, "count"), v33}];
    }

    if ([v15 isEqualToString:v16])
    {
      v32 = [MEMORY[0x277CCA890] currentHandler];
      [v32 handleFailureInMethod:a2 object:v17 file:@"PMLEspressoDataProvider.m" lineNumber:48 description:{@"The names of the input and trueLabel can not be the same: %s", objc_msgSend(v15, "UTF8String")}];
    }

    v17->_numberOfDataPoints = [v13 count];
    v19 = [v14 bytes];
    numberOfDataPoints = v17->_numberOfDataPoints;
    if (numberOfDataPoints)
    {
      v21 = v19;
      v22 = 0;
      v23 = 0x277CCA000uLL;
      do
      {
        v24 = *(v21 + 4 * v22);
        if (v24 < 0.0)
        {
          v34 = [*(v23 + 2192) currentHandler];
          [v34 handleFailureInMethod:a2 object:v17 file:@"PMLEspressoDataProvider.m" lineNumber:55 description:{@"Label value %f must be greater than 0", v24}];

          v23 = 0x277CCA000;
          numberOfDataPoints = v17->_numberOfDataPoints;
        }

        ++v22;
      }

      while (numberOfDataPoints > v22);
    }

    objc_storeStrong(&v17->_rowsData, a3);
    objc_storeStrong(&v17->_labelsData, a4);
    objc_storeStrong(&v17->_inputName, a5);
    v17->_inputDim = v36;
    objc_storeStrong(&v17->_trueLabelName, a7);
    v25 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:4 * v17->_inputDim];
    inputBuffer = v17->_inputBuffer;
    v17->_inputBuffer = v25;

    v27 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:4];
    trueLabelBuffer = v17->_trueLabelBuffer;
    v17->_trueLabelBuffer = v27;

    v15 = v37;
  }

  return v17;
}

@end