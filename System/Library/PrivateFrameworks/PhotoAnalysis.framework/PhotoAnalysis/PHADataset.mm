@interface PHADataset
- (PHADataset)initWithLabeledFeatureVectors:(id)a3 inputName:(id)a4 labelName:(id)a5;
- (id)dataPointAtIndex:(unint64_t)a3 error:(id *)a4;
- (unint64_t)numberOfDataPoints;
@end

@implementation PHADataset

- (unint64_t)numberOfDataPoints
{
  v2 = [(PHADataset *)self labeledDataSamples];
  v3 = [v2 count];

  return v3;
}

- (id)dataPointAtIndex:(unint64_t)a3 error:(id *)a4
{
  v35[1] = *MEMORY[0x277D85DE8];
  if ([(PHADataset *)self numberOfDataPoints]> a3)
  {
    v7 = [(PHADataset *)self labeledDataSamples];
    v8 = [v7 objectAtIndexedSubscript:a3];
    v9 = [v8 floatVector];

    v10 = objc_alloc(MEMORY[0x277D07758]);
    v11 = [v9 data];
    v12 = [v11 bytes];
    v33[0] = &unk_2844CC378;
    v33[1] = &unk_2844CC378;
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "count")}];
    v33[2] = v13;
    v33[3] = &unk_2844CC378;
    v33[4] = &unk_2844CC378;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:5];
    v15 = [v10 initWithData:v12 type:2 shape:v14 strides:&unk_2844CCA98];

    v16 = [(PHADataset *)self labeledDataSamples];
    v17 = [v16 objectAtIndexedSubscript:a3];
    v18 = [v17 label];

    v19 = objc_alloc(MEMORY[0x277D07758]);
    v20 = [v18 data];
    v21 = [v20 bytes];
    v32[0] = &unk_2844CC378;
    v32[1] = &unk_2844CC378;
    v22 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v18, "count")}];
    v32[2] = v22;
    v32[3] = &unk_2844CC378;
    v32[4] = &unk_2844CC378;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:5];
    v24 = [v19 initWithData:v21 type:2 shape:v23 strides:&unk_2844CCAB0];

    v25 = [(PHADataset *)self inputName];
    v30[0] = v25;
    v31[0] = v15;
    v26 = [(PHADataset *)self labelName];
    v30[1] = v26;
    v31[1] = v24;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

LABEL_5:
    goto LABEL_6;
  }

  if (a4)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Index (%lu) is larger than total number of data points (%lu).", a3, -[PHADataset numberOfDataPoints](self, "numberOfDataPoints")];
    v28 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA450];
    v35[0] = v9;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    *a4 = [v28 errorWithDomain:@"com.apple.PhotoAnalysis.PHADataset" code:0 userInfo:v15];
    v27 = MEMORY[0x277CBEC10];
    goto LABEL_5;
  }

  v27 = MEMORY[0x277CBEC10];
LABEL_6:

  return v27;
}

- (PHADataset)initWithLabeledFeatureVectors:(id)a3 inputName:(id)a4 labelName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PHADataset;
  v12 = [(PHADataset *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_labeledDataSamples, a3);
    objc_storeStrong(&v13->_inputName, a4);
    objc_storeStrong(&v13->_labelName, a5);
  }

  return v13;
}

@end