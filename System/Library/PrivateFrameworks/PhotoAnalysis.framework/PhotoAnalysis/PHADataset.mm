@interface PHADataset
- (PHADataset)initWithLabeledFeatureVectors:(id)vectors inputName:(id)name labelName:(id)labelName;
- (id)dataPointAtIndex:(unint64_t)index error:(id *)error;
- (unint64_t)numberOfDataPoints;
@end

@implementation PHADataset

- (unint64_t)numberOfDataPoints
{
  labeledDataSamples = [(PHADataset *)self labeledDataSamples];
  v3 = [labeledDataSamples count];

  return v3;
}

- (id)dataPointAtIndex:(unint64_t)index error:(id *)error
{
  v35[1] = *MEMORY[0x277D85DE8];
  if ([(PHADataset *)self numberOfDataPoints]> index)
  {
    labeledDataSamples = [(PHADataset *)self labeledDataSamples];
    v8 = [labeledDataSamples objectAtIndexedSubscript:index];
    floatVector = [v8 floatVector];

    v10 = objc_alloc(MEMORY[0x277D07758]);
    data = [floatVector data];
    bytes = [data bytes];
    v33[0] = &unk_2844CC378;
    v33[1] = &unk_2844CC378;
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(floatVector, "count")}];
    v33[2] = v13;
    v33[3] = &unk_2844CC378;
    v33[4] = &unk_2844CC378;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:5];
    v15 = [v10 initWithData:bytes type:2 shape:v14 strides:&unk_2844CCA98];

    labeledDataSamples2 = [(PHADataset *)self labeledDataSamples];
    v17 = [labeledDataSamples2 objectAtIndexedSubscript:index];
    label = [v17 label];

    v19 = objc_alloc(MEMORY[0x277D07758]);
    data2 = [label data];
    bytes2 = [data2 bytes];
    v32[0] = &unk_2844CC378;
    v32[1] = &unk_2844CC378;
    v22 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(label, "count")}];
    v32[2] = v22;
    v32[3] = &unk_2844CC378;
    v32[4] = &unk_2844CC378;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:5];
    v24 = [v19 initWithData:bytes2 type:2 shape:v23 strides:&unk_2844CCAB0];

    inputName = [(PHADataset *)self inputName];
    v30[0] = inputName;
    v31[0] = v15;
    labelName = [(PHADataset *)self labelName];
    v30[1] = labelName;
    v31[1] = v24;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

LABEL_5:
    goto LABEL_6;
  }

  if (error)
  {
    floatVector = [MEMORY[0x277CCACA8] stringWithFormat:@"Index (%lu) is larger than total number of data points (%lu).", index, -[PHADataset numberOfDataPoints](self, "numberOfDataPoints")];
    v28 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA450];
    v35[0] = floatVector;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    *error = [v28 errorWithDomain:@"com.apple.PhotoAnalysis.PHADataset" code:0 userInfo:v15];
    v27 = MEMORY[0x277CBEC10];
    goto LABEL_5;
  }

  v27 = MEMORY[0x277CBEC10];
LABEL_6:

  return v27;
}

- (PHADataset)initWithLabeledFeatureVectors:(id)vectors inputName:(id)name labelName:(id)labelName
{
  vectorsCopy = vectors;
  nameCopy = name;
  labelNameCopy = labelName;
  v15.receiver = self;
  v15.super_class = PHADataset;
  v12 = [(PHADataset *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_labeledDataSamples, vectors);
    objc_storeStrong(&v13->_inputName, name);
    objc_storeStrong(&v13->_labelName, labelName);
  }

  return v13;
}

@end