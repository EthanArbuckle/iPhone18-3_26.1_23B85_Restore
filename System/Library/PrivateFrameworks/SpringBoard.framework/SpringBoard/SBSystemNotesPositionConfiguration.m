@interface SBSystemNotesPositionConfiguration
- (SBSystemNotesPositionConfiguration)initWithEdgeProtectEnabled:(BOOL)a3 position:(unint64_t)a4;
@end

@implementation SBSystemNotesPositionConfiguration

- (SBSystemNotesPositionConfiguration)initWithEdgeProtectEnabled:(BOOL)a3 position:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = SBSystemNotesPositionConfiguration;
  result = [(SBSystemNotesPositionConfiguration *)&v7 init];
  if (result)
  {
    result->_edgeProtectEnabled = a3;
    result->_position = a4;
  }

  return result;
}

@end