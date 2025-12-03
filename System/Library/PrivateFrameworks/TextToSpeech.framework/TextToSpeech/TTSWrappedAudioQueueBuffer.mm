@interface TTSWrappedAudioQueueBuffer
- (AudioTimeStamp)queuedTimeStamp;
- (void)setQueuedTimeStamp:(AudioTimeStamp *)stamp;
@end

@implementation TTSWrappedAudioQueueBuffer

- (AudioTimeStamp)queuedTimeStamp
{
  v3 = *&self->mSMPTETime.mHours;
  *&retstr->mSampleTime = *&self->mSMPTETime.mSubframes;
  *&retstr->mRateScalar = v3;
  v4 = *&self[1].mRateScalar;
  *&retstr->mSMPTETime.mSubframes = *&self[1].mSampleTime;
  *&retstr->mSMPTETime.mHours = v4;
  return self;
}

- (void)setQueuedTimeStamp:(AudioTimeStamp *)stamp
{
  v3 = *&stamp->mSampleTime;
  v4 = *&stamp->mRateScalar;
  v5 = *&stamp->mSMPTETime.mHours;
  *&self->_queuedTimeStamp.mSMPTETime.mSubframes = *&stamp->mSMPTETime.mSubframes;
  *&self->_queuedTimeStamp.mSMPTETime.mHours = v5;
  *&self->_queuedTimeStamp.mSampleTime = v3;
  *&self->_queuedTimeStamp.mRateScalar = v4;
}

@end