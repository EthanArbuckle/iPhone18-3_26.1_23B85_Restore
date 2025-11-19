@interface SSEnvironmentDescriptionAppleInternalOptions
- (SSEnvironmentDescriptionAppleInternalOptions)initWithBSXPCCoder:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation SSEnvironmentDescriptionAppleInternalOptions

- (SSEnvironmentDescriptionAppleInternalOptions)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(SSEnvironmentDescriptionAppleInternalOptions *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SSEnvironmentDescriptionAppleInternalOptionsRunPPTServiceRequest"];
  runPPTServiceRequest = v5->_runPPTServiceRequest;
  v5->_runPPTServiceRequest = v6;

  if (RecapLibraryCore())
  {
    v8 = [v4 decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"SSEnvironmentDescriptionAppleInternalRecapKey"];
    if (v8)
    {
      v15 = 0;
      v16 = &v15;
      v17 = 0x2050000000;
      v9 = getRCPMovieClass_softClass;
      v18 = getRCPMovieClass_softClass;
      if (!getRCPMovieClass_softClass)
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __getRCPMovieClass_block_invoke;
        v14[3] = &unk_1E8590188;
        v14[4] = &v15;
        __getRCPMovieClass_block_invoke(v14);
        v9 = v16[3];
      }

      v10 = v9;
      _Block_object_dispose(&v15, 8);
      v11 = [[v9 alloc] initWithXPC:v8];
      recapMovie = v5->_recapMovie;
      v5->_recapMovie = v11;
    }
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v10 = a3;
  v4 = [(SSEnvironmentDescriptionAppleInternalOptions *)self runPPTServiceRequest];
  [v10 encodeObject:v4 forKey:@"SSEnvironmentDescriptionAppleInternalOptionsRunPPTServiceRequest"];

  v5 = [(SSEnvironmentDescriptionAppleInternalOptions *)self recapMovie];
  if (v5)
  {
    v6 = v5;
    v7 = RecapLibraryCore();

    if (v7)
    {
      v8 = [(SSEnvironmentDescriptionAppleInternalOptions *)self recapMovie];
      v9 = [v8 encodeToXPC];
      [v10 encodeXPCObject:v9 forKey:@"SSEnvironmentDescriptionAppleInternalRecapKey"];
    }
  }
}

@end