@interface WBSMultiRoundAutoFillManager
- (BOOL)shouldAttemptFollowUpAutoFillInFormWithMetadata:(id)a3 requestType:(unint64_t)a4;
- (WBSMultiRoundAutoFillManager)initWithDataType:(unint64_t)a3;
- (void)dealloc;
- (void)dispatchFollowUpAutoFillOfFormWithMetdata:(id)a3 autoFillBlock:(id)a4;
- (void)setAddressBookPropertiesThatCanBeFilled:(id)a3;
@end

@implementation WBSMultiRoundAutoFillManager

- (void)dispatchFollowUpAutoFillOfFormWithMetdata:(id)a3 autoFillBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  ++self->_numberOfFollowUpAutoFillAttempts;
  formMetadataFromPreviousAutoFillAttempt = self->_formMetadataFromPreviousAutoFillAttempt;
  self->_autoFillAttemptTrigger = 1;
  self->_formMetadataFromPreviousAutoFillAttempt = v6;
  v9 = v6;

  v10 = MEMORY[0x1E695DFF0];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88__WBSMultiRoundAutoFillManager_dispatchFollowUpAutoFillOfFormWithMetdata_autoFillBlock___block_invoke;
  v14[3] = &unk_1E7FC86C8;
  v15 = v7;
  v11 = v7;
  v12 = [v10 scheduledTimerWithTimeInterval:0 repeats:v14 block:0.25];
  timerForFollowUpAutoFill = self->_timerForFollowUpAutoFill;
  self->_timerForFollowUpAutoFill = v12;
}

- (void)dealloc
{
  [(NSTimer *)self->_timerForFollowUpAutoFill invalidate];
  v3.receiver = self;
  v3.super_class = WBSMultiRoundAutoFillManager;
  [(WBSMultiRoundAutoFillManager *)&v3 dealloc];
}

- (WBSMultiRoundAutoFillManager)initWithDataType:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = WBSMultiRoundAutoFillManager;
  v4 = [(WBSMultiRoundAutoFillManager *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_dataType = a3;
    v4->_autoFillAttemptTrigger = 0;
    v4->_userDidInteractWithForm = 0;
    timerForFollowUpAutoFill = v4->_timerForFollowUpAutoFill;
    v4->_numberOfFollowUpAutoFillAttempts = 0;
    v4->_timerForFollowUpAutoFill = 0;

    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    controlUniqueIDToBeIgnoredByFollowUpAutoFill = v5->_controlUniqueIDToBeIgnoredByFollowUpAutoFill;
    v5->_controlUniqueIDToBeIgnoredByFollowUpAutoFill = v7;

    v9 = v5;
  }

  return v5;
}

- (BOOL)shouldAttemptFollowUpAutoFillInFormWithMetadata:(id)a3 requestType:(unint64_t)a4
{
  v6 = a3;
  LOBYTE(v7) = 0;
  if (!a4 && !self->_userDidInteractWithForm)
  {
    if (self->_numberOfFollowUpAutoFillAttempts <= 4)
    {
      v7 = ![(WBSFormMetadata *)self->_formMetadataFromPreviousAutoFillAttempt isEqual:v6];
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (void)setAddressBookPropertiesThatCanBeFilled:(id)a3
{
  v4 = [MEMORY[0x1E695DFD8] setWithSet:a3];
  addressBookPropertiesThatCanBeFilled = self->_addressBookPropertiesThatCanBeFilled;
  self->_addressBookPropertiesThatCanBeFilled = v4;
}

@end