@interface UPModelConfiguration
+ (id)_configurationWithBioLabelsVocabPath:(id)a3 configPath:(id)a4 grammarPath:(id)a5 intentVocabPath:(id)a6 spanVocabPath:(id)a7 parserEspressoModelPath:(id)a8 calibrationEspressoModelPath:(id)a9 error:(id *)a10;
+ (id)configurationFromDirectoryUrl:(id)a3 error:(id *)a4;
- (id)_initWithBioLabelsVocabPath:(id)a3 configPath:(id)a4 grammarPath:(id)a5 intentVocabPath:(id)a6 spanVocabPath:(id)a7 parserEspressoModelPath:(id)a8 calibrationEspressoModelPath:(id)a9;
@end

@implementation UPModelConfiguration

- (id)_initWithBioLabelsVocabPath:(id)a3 configPath:(id)a4 grammarPath:(id)a5 intentVocabPath:(id)a6 spanVocabPath:(id)a7 parserEspressoModelPath:(id)a8 calibrationEspressoModelPath:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v38.receiver = self;
  v38.super_class = UPModelConfiguration;
  v22 = [(UPModelConfiguration *)&v38 init];
  if (v22)
  {
    v23 = [v15 copy];
    bioLabelsVocabPath = v22->_bioLabelsVocabPath;
    v22->_bioLabelsVocabPath = v23;

    v25 = [v16 copy];
    configPath = v22->_configPath;
    v22->_configPath = v25;

    v27 = [v17 copy];
    grammarPath = v22->_grammarPath;
    v22->_grammarPath = v27;

    v29 = [v18 copy];
    intentVocabPath = v22->_intentVocabPath;
    v22->_intentVocabPath = v29;

    v31 = [v19 copy];
    spanVocabPath = v22->_spanVocabPath;
    v22->_spanVocabPath = v31;

    v33 = [v20 copy];
    parserEspressoModelPath = v22->_parserEspressoModelPath;
    v22->_parserEspressoModelPath = v33;

    v35 = [v21 copy];
    calibrationEspressoModelPath = v22->_calibrationEspressoModelPath;
    v22->_calibrationEspressoModelPath = v35;

    objc_storeStrong(&v22->_espressoModelPath, v22->_parserEspressoModelPath);
  }

  return v22;
}

+ (id)configurationFromDirectoryUrl:(id)a3 error:(id *)a4
{
  v33[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 path];
  v6 = [v5 stringByAppendingPathComponent:@"calibration_model.mlmodelc"];

  v33[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
  LODWORD(v5) = [UPUtilities checkFileExistence:v7 error:0];

  v8 = 0;
  if (v5)
  {
    v8 = v6;
  }

  v9 = [v4 path];
  [v9 stringByAppendingPathComponent:@"info.plist"];
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

  v27 = [v4 path];
  v14 = [v27 stringByAppendingPathComponent:@"bio_labels.vocab.txt"];
  v26 = [v4 path];
  v15 = [v26 stringByAppendingPathComponent:v13];
  v25 = [v4 path];
  v16 = [v25 stringByAppendingPathComponent:@"grammar.json"];
  v24 = [v4 path];
  v17 = [v24 stringByAppendingPathComponent:@"intent.vocab.txt"];
  v18 = [v4 path];
  v19 = [v18 stringByAppendingPathComponent:@"span.vocab.txt"];
  v20 = [v4 path];
  v21 = [v20 stringByAppendingPathComponent:@"model.mlmodelc"];
  v31 = [a1 _configurationWithBioLabelsVocabPath:v14 configPath:v15 grammarPath:v16 intentVocabPath:v17 spanVocabPath:v19 parserEspressoModelPath:v21 calibrationEspressoModelPath:v8 error:a4];

  v22 = *MEMORY[0x277D85DE8];

  return v31;
}

+ (id)_configurationWithBioLabelsVocabPath:(id)a3 configPath:(id)a4 grammarPath:(id)a5 intentVocabPath:(id)a6 spanVocabPath:(id)a7 parserEspressoModelPath:(id)a8 calibrationEspressoModelPath:(id)a9 error:(id *)a10
{
  v32[6] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v30 = v15;
  v32[0] = v15;
  v32[1] = v16;
  v22 = v16;
  v32[2] = v17;
  v32[3] = v18;
  v32[4] = v19;
  v32[5] = v20;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:6];
  if (+[UPUtilities checkFileExistence:error:](UPUtilities, "checkFileExistence:error:", v23, a10) && (!v21 || (v31 = v21, [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1], v24 = objc_claimAutoreleasedReturnValue(), v25 = +[UPUtilities checkFileExistence:error:](UPUtilities, "checkFileExistence:error:", v24, a10), v24, v25)))
  {
    v26 = v30;
    v27 = [[UPModelConfiguration alloc] _initWithBioLabelsVocabPath:v30 configPath:v22 grammarPath:v17 intentVocabPath:v18 spanVocabPath:v19 parserEspressoModelPath:v20 calibrationEspressoModelPath:v21];
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