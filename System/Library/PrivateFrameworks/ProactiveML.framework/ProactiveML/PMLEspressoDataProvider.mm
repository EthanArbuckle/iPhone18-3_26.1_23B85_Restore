@interface PMLEspressoDataProvider
- (PMLEspressoDataProvider)initWithRowsData:(id)data labelsData:(id)labelsData inputName:(id)name inputDim:(unint64_t)dim trueLabelName:(id)labelName;
- (id)dataPointAtIndex:(unint64_t)index error:(id *)error;
- (void)clearBuffers;
@end

@implementation PMLEspressoDataProvider

- (id)dataPointAtIndex:(unint64_t)index error:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  if (self->_numberOfDataPoints <= index)
  {
    v26 = PML_LogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      numberOfDataPoints = self->_numberOfDataPoints;
      *buf = 134218240;
      indexCopy = index;
      v37 = 2048;
      v38 = numberOfDataPoints;
      _os_log_error_impl(&dword_260D68000, v26, OS_LOG_TYPE_ERROR, "Out of range index %lu requested from PMLEspressoDataProvider of size %lu", buf, 0x16u);
    }

    v14 = MEMORY[0x277CBEC10];
  }

  else
  {
    [(PMLEspressoDataProvider *)self clearBuffers];
    *buf = *([(NSData *)self->_labelsData bytes]+ 4 * index);
    [(NSMutableData *)self->_trueLabelBuffer replaceBytesInRange:0 withBytes:4, buf];
    inputDim = self->_inputDim;
    v6 = [(NSArray *)self->_rowsData objectAtIndexedSubscript:index];
    first = [v6 first];
    v8 = [first length] >> 2;
    v9 = [(NSArray *)self->_rowsData objectAtIndexedSubscript:index];
    first2 = [v9 first];
    bytes = [first2 bytes];
    v12 = [(NSArray *)self->_rowsData objectAtIndexedSubscript:index];
    second = [v12 second];
    +[PMLSparseVector sparseVectorWithLength:numberOfNonZeroValues:isSparseIndexInt64:sparseIndices:sparseValues:toDenseValues:withLength:](PMLSparseVector, "sparseVectorWithLength:numberOfNonZeroValues:isSparseIndexInt64:sparseIndices:sparseValues:toDenseValues:withLength:", inputDim, v8, 0, bytes, [second bytes], -[NSMutableData mutableBytes](self->_inputBuffer, "mutableBytes"), self->_inputDim);

    v14 = objc_opt_new();
    v32 = objc_alloc(MEMORY[0x277D07758]);
    mutableBytes = [(NSMutableData *)self->_inputBuffer mutableBytes];
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
    v21 = [v32 initWithData:mutableBytes type:2 shape:v16 strides:v20];
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

- (PMLEspressoDataProvider)initWithRowsData:(id)data labelsData:(id)labelsData inputName:(id)name inputDim:(unint64_t)dim trueLabelName:(id)labelName
{
  dataCopy = data;
  labelsDataCopy = labelsData;
  nameCopy = name;
  labelNameCopy = labelName;
  v38.receiver = self;
  v38.super_class = PMLEspressoDataProvider;
  v17 = [(PMLEspressoDataProvider *)&v38 init];
  if (v17)
  {
    dimCopy = dim;
    v18 = [labelsDataCopy length];
    v37 = nameCopy;
    if ([dataCopy count] != v18 >> 2)
    {
      v30 = v18 >> 2;
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v33 = v30;
      nameCopy = v37;
      [currentHandler handleFailureInMethod:a2 object:v17 file:@"PMLEspressoDataProvider.m" lineNumber:45 description:{@"Number of dimensions in rows data (%lu) number of labels (%lu)", objc_msgSend(dataCopy, "count"), v33}];
    }

    if ([nameCopy isEqualToString:labelNameCopy])
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:v17 file:@"PMLEspressoDataProvider.m" lineNumber:48 description:{@"The names of the input and trueLabel can not be the same: %s", objc_msgSend(nameCopy, "UTF8String")}];
    }

    v17->_numberOfDataPoints = [dataCopy count];
    bytes = [labelsDataCopy bytes];
    numberOfDataPoints = v17->_numberOfDataPoints;
    if (numberOfDataPoints)
    {
      v21 = bytes;
      v22 = 0;
      v23 = 0x277CCA000uLL;
      do
      {
        v24 = *(v21 + 4 * v22);
        if (v24 < 0.0)
        {
          currentHandler3 = [*(v23 + 2192) currentHandler];
          [currentHandler3 handleFailureInMethod:a2 object:v17 file:@"PMLEspressoDataProvider.m" lineNumber:55 description:{@"Label value %f must be greater than 0", v24}];

          v23 = 0x277CCA000;
          numberOfDataPoints = v17->_numberOfDataPoints;
        }

        ++v22;
      }

      while (numberOfDataPoints > v22);
    }

    objc_storeStrong(&v17->_rowsData, data);
    objc_storeStrong(&v17->_labelsData, labelsData);
    objc_storeStrong(&v17->_inputName, name);
    v17->_inputDim = dimCopy;
    objc_storeStrong(&v17->_trueLabelName, labelName);
    v25 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:4 * v17->_inputDim];
    inputBuffer = v17->_inputBuffer;
    v17->_inputBuffer = v25;

    v27 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:4];
    trueLabelBuffer = v17->_trueLabelBuffer;
    v17->_trueLabelBuffer = v27;

    nameCopy = v37;
  }

  return v17;
}

@end