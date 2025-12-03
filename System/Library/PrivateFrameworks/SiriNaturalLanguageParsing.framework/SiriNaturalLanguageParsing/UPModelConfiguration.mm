@interface UPModelConfiguration
+ (id)_configurationWithBioLabelsVocabPath:(id)path configPath:(id)configPath grammarPath:(id)grammarPath intentVocabPath:(id)vocabPath spanVocabPath:(id)spanVocabPath parserEspressoModelPath:(id)modelPath calibrationEspressoModelPath:(id)espressoModelPath error:(id *)self0;
+ (id)configurationFromDirectoryUrl:(id)url error:(id *)error;
- (id)_initWithBioLabelsVocabPath:(id)path configPath:(id)configPath grammarPath:(id)grammarPath intentVocabPath:(id)vocabPath spanVocabPath:(id)spanVocabPath parserEspressoModelPath:(id)modelPath calibrationEspressoModelPath:(id)espressoModelPath;
@end

@implementation UPModelConfiguration

- (id)_initWithBioLabelsVocabPath:(id)path configPath:(id)configPath grammarPath:(id)grammarPath intentVocabPath:(id)vocabPath spanVocabPath:(id)spanVocabPath parserEspressoModelPath:(id)modelPath calibrationEspressoModelPath:(id)espressoModelPath
{
  pathCopy = path;
  configPathCopy = configPath;
  grammarPathCopy = grammarPath;
  vocabPathCopy = vocabPath;
  spanVocabPathCopy = spanVocabPath;
  modelPathCopy = modelPath;
  espressoModelPathCopy = espressoModelPath;
  v38.receiver = self;
  v38.super_class = UPModelConfiguration;
  v22 = [(UPModelConfiguration *)&v38 init];
  if (v22)
  {
    v23 = [pathCopy copy];
    bioLabelsVocabPath = v22->_bioLabelsVocabPath;
    v22->_bioLabelsVocabPath = v23;

    v25 = [configPathCopy copy];
    configPath = v22->_configPath;
    v22->_configPath = v25;

    v27 = [grammarPathCopy copy];
    grammarPath = v22->_grammarPath;
    v22->_grammarPath = v27;

    v29 = [vocabPathCopy copy];
    intentVocabPath = v22->_intentVocabPath;
    v22->_intentVocabPath = v29;

    v31 = [spanVocabPathCopy copy];
    spanVocabPath = v22->_spanVocabPath;
    v22->_spanVocabPath = v31;

    v33 = [modelPathCopy copy];
    parserEspressoModelPath = v22->_parserEspressoModelPath;
    v22->_parserEspressoModelPath = v33;

    v35 = [espressoModelPathCopy copy];
    calibrationEspressoModelPath = v22->_calibrationEspressoModelPath;
    v22->_calibrationEspressoModelPath = v35;

    objc_storeStrong(&v22->_espressoModelPath, v22->_parserEspressoModelPath);
  }

  return v22;
}

+ (id)configurationFromDirectoryUrl:(id)url error:(id *)error
{
  v33[1] = *MEMORY[0x277D85DE8];
  urlCopy = url;
  path = [urlCopy path];
  v6 = [path stringByAppendingPathComponent:@"calibration_model.mlmodelc"];

  v33[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
  LODWORD(path) = [UPUtilities checkFileExistence:v7 error:0];

  v8 = 0;
  if (path)
  {
    v8 = v6;
  }

  path2 = [urlCopy path];
  [path2 stringByAppendingPathComponent:@"info.plist"];
  v10 = v28 = v6;
  v32 = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
  v12 = [UPUtilities checkFileExistence:v11 error:0];

  if (v12)
  {
    v13 = @"info.plist";
  }

  else
  {
    v13 = @"model_info.plist";
  }

  path3 = [urlCopy path];
  v14 = [path3 stringByAppendingPathComponent:@"bio_labels.vocab.txt"];
  path4 = [urlCopy path];
  v15 = [path4 stringByAppendingPathComponent:v13];
  path5 = [urlCopy path];
  v16 = [path5 stringByAppendingPathComponent:@"grammar.json"];
  path6 = [urlCopy path];
  v17 = [path6 stringByAppendingPathComponent:@"intent.vocab.txt"];
  path7 = [urlCopy path];
  v19 = [path7 stringByAppendingPathComponent:@"span.vocab.txt"];
  path8 = [urlCopy path];
  v21 = [path8 stringByAppendingPathComponent:@"model.mlmodelc"];
  v31 = [self _configurationWithBioLabelsVocabPath:v14 configPath:v15 grammarPath:v16 intentVocabPath:v17 spanVocabPath:v19 parserEspressoModelPath:v21 calibrationEspressoModelPath:v8 error:error];

  v22 = *MEMORY[0x277D85DE8];

  return v31;
}

+ (id)_configurationWithBioLabelsVocabPath:(id)path configPath:(id)configPath grammarPath:(id)grammarPath intentVocabPath:(id)vocabPath spanVocabPath:(id)spanVocabPath parserEspressoModelPath:(id)modelPath calibrationEspressoModelPath:(id)espressoModelPath error:(id *)self0
{
  v32[6] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  configPathCopy = configPath;
  grammarPathCopy = grammarPath;
  vocabPathCopy = vocabPath;
  spanVocabPathCopy = spanVocabPath;
  modelPathCopy = modelPath;
  espressoModelPathCopy = espressoModelPath;
  v30 = pathCopy;
  v32[0] = pathCopy;
  v32[1] = configPathCopy;
  v22 = configPathCopy;
  v32[2] = grammarPathCopy;
  v32[3] = vocabPathCopy;
  v32[4] = spanVocabPathCopy;
  v32[5] = modelPathCopy;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:6];
  if (+[UPUtilities checkFileExistence:error:](UPUtilities, "checkFileExistence:error:", v23, error) && (!espressoModelPathCopy || (v31 = espressoModelPathCopy, [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1], v24 = objc_claimAutoreleasedReturnValue(), v25 = +[UPUtilities checkFileExistence:error:](UPUtilities, "checkFileExistence:error:", v24, error), v24, v25)))
  {
    v26 = v30;
    v27 = [[UPModelConfiguration alloc] _initWithBioLabelsVocabPath:v30 configPath:v22 grammarPath:grammarPathCopy intentVocabPath:vocabPathCopy spanVocabPath:spanVocabPathCopy parserEspressoModelPath:modelPathCopy calibrationEspressoModelPath:espressoModelPathCopy];
  }

  else
  {
    v27 = 0;
    v26 = v30;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

@end