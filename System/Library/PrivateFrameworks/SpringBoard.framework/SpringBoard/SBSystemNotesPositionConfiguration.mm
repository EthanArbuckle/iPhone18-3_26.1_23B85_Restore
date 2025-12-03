@interface SBSystemNotesPositionConfiguration
- (SBSystemNotesPositionConfiguration)initWithEdgeProtectEnabled:(BOOL)enabled position:(unint64_t)position;
@end

@implementation SBSystemNotesPositionConfiguration

- (SBSystemNotesPositionConfiguration)initWithEdgeProtectEnabled:(BOOL)enabled position:(unint64_t)position
{
  v7.receiver = self;
  v7.super_class = SBSystemNotesPositionConfiguration;
  result = [(SBSystemNotesPositionConfiguration *)&v7 init];
  if (result)
  {
    result->_edgeProtectEnabled = enabled;
    result->_position = position;
  }

  return result;
}

@end