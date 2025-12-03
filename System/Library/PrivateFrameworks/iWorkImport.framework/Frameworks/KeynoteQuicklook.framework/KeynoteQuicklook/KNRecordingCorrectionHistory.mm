@interface KNRecordingCorrectionHistory
- (BOOL)isEqual:(id)equal;
- (KNRecordingCorrectionHistory)correctionHistoryWithAddedMissingEventsForRadar49654305;
- (KNRecordingCorrectionHistory)init;
- (KNRecordingCorrectionHistory)initWithMessage:(const void *)message unarchiver:(id)unarchiver;
- (id)description;
- (void)saveToMessage:(void *)message archiver:(id)archiver;
@end

@implementation KNRecordingCorrectionHistory

- (KNRecordingCorrectionHistory)init
{
  v3.receiver = self;
  v3.super_class = KNRecordingCorrectionHistory;
  return [(KNRecordingCorrectionHistory *)&v3 init];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277D811A8]);
  v5 = objc_msgSend_initWithObject_(v3, v4, self);
  if (objc_msgSend_didAddMissingEventsForRadar49654305(self, v6, v7))
  {
    objc_msgSend_addFieldValue_(v5, v8, @"didAddMissingEventsForRadar49654305");
  }

  v10 = objc_msgSend_descriptionString(v5, v8, v9);

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    if (v5)
    {
      v6 = self->_didAddMissingEventsForRadar49654305 == v5[8];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (KNRecordingCorrectionHistory)correctionHistoryWithAddedMissingEventsForRadar49654305
{
  v2 = objc_alloc_init(KNRecordingCorrectionHistory);
  v2->_didAddMissingEventsForRadar49654305 = 1;

  return v2;
}

- (KNRecordingCorrectionHistory)initWithMessage:(const void *)message unarchiver:(id)unarchiver
{
  v6.receiver = self;
  v6.super_class = KNRecordingCorrectionHistory;
  result = [(KNRecordingCorrectionHistory *)&v6 init:message];
  if (result)
  {
    result->_didAddMissingEventsForRadar49654305 = *(message + 24);
  }

  return result;
}

- (void)saveToMessage:(void *)message archiver:(id)archiver
{
  didAddMissingEventsForRadar49654305 = self->_didAddMissingEventsForRadar49654305;
  *(message + 4) |= 1u;
  *(message + 24) = didAddMissingEventsForRadar49654305;
}

@end