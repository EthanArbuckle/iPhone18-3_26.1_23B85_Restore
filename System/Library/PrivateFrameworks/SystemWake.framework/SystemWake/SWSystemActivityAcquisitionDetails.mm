@interface SWSystemActivityAcquisitionDetails
- (NSString)description;
- (SWSystemActivityAcquisitionDetails)initWithAfterPendingSleepWasAlreadyInitiated:(BOOL)initiated afterFailingToRevertPendingSleep:(BOOL)sleep afterSleepOfNonZeroDuration:(BOOL)duration;
@end

@implementation SWSystemActivityAcquisitionDetails

- (SWSystemActivityAcquisitionDetails)initWithAfterPendingSleepWasAlreadyInitiated:(BOOL)initiated afterFailingToRevertPendingSleep:(BOOL)sleep afterSleepOfNonZeroDuration:(BOOL)duration
{
  v9.receiver = self;
  v9.super_class = SWSystemActivityAcquisitionDetails;
  result = [(SWSystemActivityAcquisitionDetails *)&v9 init];
  if (result)
  {
    result->_afterPendingSleepWasAlreadyInitiated = initiated;
    result->_afterFailingToRevertPendingSleep = sleep;
    result->_afterSleepOfNonZeroDuration = duration;
  }

  return result;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:self->_afterPendingSleepWasAlreadyInitiated withName:@"afterPendingSleepWasAlreadyInitiated"];
  v5 = [v3 appendBool:self->_afterFailingToRevertPendingSleep withName:@"afterFailingToRevertPendingSleep"];
  v6 = [v3 appendBool:self->_afterSleepOfNonZeroDuration withName:@"afterSleepOfNonZeroDuration"];
  build = [v3 build];

  return build;
}

@end