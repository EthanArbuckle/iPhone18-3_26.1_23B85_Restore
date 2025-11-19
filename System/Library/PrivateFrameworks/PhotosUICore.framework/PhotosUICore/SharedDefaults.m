@interface SharedDefaults
@end

@implementation SharedDefaults

void ___SharedDefaults_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = _SharedDefaults__sharedDefaults;
  _SharedDefaults__sharedDefaults = v0;
}

@end