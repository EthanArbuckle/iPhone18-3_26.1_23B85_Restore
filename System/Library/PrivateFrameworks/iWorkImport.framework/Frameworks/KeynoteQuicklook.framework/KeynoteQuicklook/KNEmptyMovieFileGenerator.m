@interface KNEmptyMovieFileGenerator
- (KNEmptyMovieFileGenerator)initWithGeneratedFileURL:(id)a3 duration:(double)a4;
- (void)generateFileWithCompletionHandler:(id)a3;
@end

@implementation KNEmptyMovieFileGenerator

- (KNEmptyMovieFileGenerator)initWithGeneratedFileURL:(id)a3 duration:(double)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = KNEmptyMovieFileGenerator;
  v9 = [(KNEmptyMovieFileGenerator *)&v13 init];
  if (v9)
  {
    v10 = objc_msgSend_copy(v6, v7, v8);
    generatedFileURL = v9->_generatedFileURL;
    v9->_generatedFileURL = v10;

    v9->_duration = a4;
  }

  return v9;
}

- (void)generateFileWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_275D665A4;
  v7[3] = &unk_27A698068;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

@end