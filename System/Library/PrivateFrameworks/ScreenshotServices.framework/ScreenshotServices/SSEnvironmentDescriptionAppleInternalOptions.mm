@interface SSEnvironmentDescriptionAppleInternalOptions
- (SSEnvironmentDescriptionAppleInternalOptions)initWithBSXPCCoder:(id)coder;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation SSEnvironmentDescriptionAppleInternalOptions

- (SSEnvironmentDescriptionAppleInternalOptions)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SSEnvironmentDescriptionAppleInternalOptions *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SSEnvironmentDescriptionAppleInternalOptionsRunPPTServiceRequest"];
  runPPTServiceRequest = v5->_runPPTServiceRequest;
  v5->_runPPTServiceRequest = v6;

  if (RecapLibraryCore())
  {
    v8 = [coderCopy decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"SSEnvironmentDescriptionAppleInternalRecapKey"];
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

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  runPPTServiceRequest = [(SSEnvironmentDescriptionAppleInternalOptions *)self runPPTServiceRequest];
  [coderCopy encodeObject:runPPTServiceRequest forKey:@"SSEnvironmentDescriptionAppleInternalOptionsRunPPTServiceRequest"];

  recapMovie = [(SSEnvironmentDescriptionAppleInternalOptions *)self recapMovie];
  if (recapMovie)
  {
    v6 = recapMovie;
    v7 = RecapLibraryCore();

    if (v7)
    {
      recapMovie2 = [(SSEnvironmentDescriptionAppleInternalOptions *)self recapMovie];
      encodeToXPC = [recapMovie2 encodeToXPC];
      [coderCopy encodeXPCObject:encodeToXPC forKey:@"SSEnvironmentDescriptionAppleInternalRecapKey"];
    }
  }
}

@end