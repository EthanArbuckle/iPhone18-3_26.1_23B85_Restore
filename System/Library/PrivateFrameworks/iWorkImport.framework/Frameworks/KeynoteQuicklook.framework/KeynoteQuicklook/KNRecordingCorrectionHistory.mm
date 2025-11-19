@interface KNRecordingCorrectionHistory
- (BOOL)isEqual:(id)a3;
- (KNRecordingCorrectionHistory)correctionHistoryWithAddedMissingEventsForRadar49654305;
- (KNRecordingCorrectionHistory)init;
- (KNRecordingCorrectionHistory)initWithMessage:(const void *)a3 unarchiver:(id)a4;
- (id)description;
- (void)saveToMessage:(void *)a3 archiver:(id)a4;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
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

- (KNRecordingCorrectionHistory)initWithMessage:(const void *)a3 unarchiver:(id)a4
{
  v6.receiver = self;
  v6.super_class = KNRecordingCorrectionHistory;
  result = [(KNRecordingCorrectionHistory *)&v6 init:a3];
  if (result)
  {
    result->_didAddMissingEventsForRadar49654305 = *(a3 + 24);
  }

  return result;
}

- (void)saveToMessage:(void *)a3 archiver:(id)a4
{
  didAddMissingEventsForRadar49654305 = self->_didAddMissingEventsForRadar49654305;
  *(a3 + 4) |= 1u;
  *(a3 + 24) = didAddMissingEventsForRadar49654305;
}

@end