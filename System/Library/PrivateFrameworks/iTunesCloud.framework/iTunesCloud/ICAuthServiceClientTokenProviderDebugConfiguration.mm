@interface ICAuthServiceClientTokenProviderDebugConfiguration
- (ICAuthServiceClientTokenProviderDebugConfiguration)initWithCoder:(id)a3;
- (ICAuthServiceClientTokenProviderDebugConfiguration)initWithCommandOption:(unint64_t)a3 allDSIDsShouldError:(BOOL)a4 allDSIDsShouldSucceed:(BOOL)a5 errorDSIDs:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICAuthServiceClientTokenProviderDebugConfiguration

- (ICAuthServiceClientTokenProviderDebugConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ICAuthServiceClientTokenProviderDebugConfiguration;
  v5 = [(ICAuthServiceClientTokenProviderDebugConfiguration *)&v12 init];
  if (v5)
  {
    v5->_commandOption = [v4 decodeIntegerForKey:@"CommandOption"];
    v5->_allDSIDsShouldError = [v4 decodeBoolForKey:@"AllDSIDsShouldError"];
    v5->_allDSIDsShouldSucceed = [v4 decodeBoolForKey:@"AllDSIDsShouldSucceed"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"ErrorDSIDs"];
    errorDSIDs = v5->_errorDSIDs;
    v5->_errorDSIDs = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  commandOption = self->_commandOption;
  v5 = a3;
  [v5 encodeInteger:commandOption forKey:@"CommandOption"];
  [v5 encodeBool:self->_allDSIDsShouldError forKey:@"AllDSIDsShouldError"];
  [v5 encodeBool:self->_allDSIDsShouldSucceed forKey:@"AllDSIDsShouldSucceed"];
  [v5 encodeObject:self->_errorDSIDs forKey:@"ErrorDSIDs"];
}

- (ICAuthServiceClientTokenProviderDebugConfiguration)initWithCommandOption:(unint64_t)a3 allDSIDsShouldError:(BOOL)a4 allDSIDsShouldSucceed:(BOOL)a5 errorDSIDs:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = ICAuthServiceClientTokenProviderDebugConfiguration;
  v12 = [(ICAuthServiceClientTokenProviderDebugConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_commandOption = a3;
    v12->_allDSIDsShouldError = a4;
    v12->_allDSIDsShouldSucceed = a5;
    objc_storeStrong(&v12->_errorDSIDs, a6);
  }

  return v13;
}

@end