@interface SMSessionManagerMutableState
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation SMSessionManagerMutableState

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SMSessionManagerState alloc];
  v5 = *&self->super._startMessageGUID;
  v6 = *&self->super._estimatedEndDate;
  return [(SMSessionManagerState *)v4 initWithSessionState:self->super._sessionState configuration:self->super._configuration userTriggerResponse:self->super._userTriggerResponse monitorContext:self->super._monitorContext date:self->super._date location:self->super._location allowReadToken:self->super._allowReadToken safetyCacheKey:self->super._safetyCacheKey startMessageGUID:self->super._startMessageGUID scheduledSendMessageGUID:self->super._scheduledSendMessageGUID scheduledSendMessageDate:self->super._scheduledSendMessageDate activeDeviceIdentifier:self->super._activeDeviceIdentifier estimatedEndDate:self->super._estimatedEndDate coarseEstimatedEndDate:self->super._coarseEstimatedEndDate estimatedEndDateStatus:self->super._estimatedEndDateStatus sessionEndReason:self->super._sessionEndReason sessionStateTransitionDate:self->super._sessionStateTransitionDate activePairedDeviceIdentifier:self->super._activePairedDeviceIdentifier];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [SMSessionManagerMutableState alloc];
  v5 = *&self->super._startMessageGUID;
  v6 = *&self->super._estimatedEndDate;
  return [(SMSessionManagerState *)v4 initWithSessionState:self->super._sessionState configuration:self->super._configuration userTriggerResponse:self->super._userTriggerResponse monitorContext:self->super._monitorContext date:self->super._date location:self->super._location allowReadToken:self->super._allowReadToken safetyCacheKey:self->super._safetyCacheKey startMessageGUID:self->super._startMessageGUID scheduledSendMessageGUID:self->super._scheduledSendMessageGUID scheduledSendMessageDate:self->super._scheduledSendMessageDate activeDeviceIdentifier:self->super._activeDeviceIdentifier estimatedEndDate:self->super._estimatedEndDate coarseEstimatedEndDate:self->super._coarseEstimatedEndDate estimatedEndDateStatus:self->super._estimatedEndDateStatus sessionEndReason:self->super._sessionEndReason sessionStateTransitionDate:self->super._sessionStateTransitionDate activePairedDeviceIdentifier:self->super._activePairedDeviceIdentifier];
}

@end