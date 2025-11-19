@interface SWSystemActivityAcquisitionDetails
- (NSString)description;
- (SWSystemActivityAcquisitionDetails)initWithAfterPendingSleepWasAlreadyInitiated:(BOOL)a3 afterFailingToRevertPendingSleep:(BOOL)a4 afterSleepOfNonZeroDuration:(BOOL)a5;
@end

@implementation SWSystemActivityAcquisitionDetails

- (SWSystemActivityAcquisitionDetails)initWithAfterPendingSleepWasAlreadyInitiated:(BOOL)a3 afterFailingToRevertPendingSleep:(BOOL)a4 afterSleepOfNonZeroDuration:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = SWSystemActivityAcquisitionDetails;
  result = [(SWSystemActivityAcquisitionDetails *)&v9 init];
  if (result)
  {
    result->_afterPendingSleepWasAlreadyInitiated = a3;
    result->_afterFailingToRevertPendingSleep = a4;
    result->_afterSleepOfNonZeroDuration = a5;
  }

  return result;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:self->_afterPendingSleepWasAlreadyInitiated withName:@"afterPendingSleepWasAlreadyInitiated"];
  v5 = [v3 appendBool:self->_afterFailingToRevertPendingSleep withName:@"afterFailingToRevertPendingSleep"];
  v6 = [v3 appendBool:self->_afterSleepOfNonZeroDuration withName:@"afterSleepOfNonZeroDuration"];
  v7 = [v3 build];

  return v7;
}

@end