@interface SWSessionScript
- (SWSessionScript)initWithSession:(id)a3;
- (WKUserScript)userScript;
@end

@implementation SWSessionScript

- (SWSessionScript)initWithSession:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SWSessionScript;
  v6 = [(SWSessionScript *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, a3);
  }

  return v7;
}

- (WKUserScript)userScript
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ACB0];
  v12 = @"identifier";
  v3 = [(SWSessionScript *)self session];
  v4 = [v3 identifier];
  v13[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v6 = [v2 dataWithJSONObject:v5 options:0 error:0];

  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:4];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"applenews.session = %@", v7];
  v9 = [objc_alloc(MEMORY[0x1E6985358]) initWithSource:v8 injectionTime:0 forMainFrameOnly:1];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

@end