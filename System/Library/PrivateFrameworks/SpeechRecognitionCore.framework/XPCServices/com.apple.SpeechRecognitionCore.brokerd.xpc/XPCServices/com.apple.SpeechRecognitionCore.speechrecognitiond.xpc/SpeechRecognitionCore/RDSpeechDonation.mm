@interface RDSpeechDonation
- (RDSpeechDonation)initWithBundleID:(id)d donorReferenceID:(id)iD locale:(id)locale taskHint:(id)hint;
- (void)addAudioSamples:(const signed __int16 *)samples count:(unint64_t)count;
@end

@implementation RDSpeechDonation

- (RDSpeechDonation)initWithBundleID:(id)d donorReferenceID:(id)iD locale:(id)locale taskHint:(id)hint
{
  dCopy = d;
  iDCopy = iD;
  localeCopy = locale;
  hintCopy = hint;
  v19.receiver = self;
  v19.super_class = RDSpeechDonation;
  v14 = [(RDSpeechDonation *)&v19 init];
  v15 = v14;
  if (v14)
  {
    [(RDSpeechDonation *)v14 setDonorBundleID:dCopy];
    [(RDSpeechDonation *)v15 setDonorReferenceID:iDCopy];
    [(RDSpeechDonation *)v15 setLocale:localeCopy];
    v16 = +[NSDate date];
    [(RDSpeechDonation *)v15 setRecordingStartDate:v16];

    [(RDSpeechDonation *)v15 setTaskHint:hintCopy];
    v17 = objc_alloc_init(NSMutableArray);
    [(RDSpeechDonation *)v15 setAudioPCMBuffers:v17];
  }

  return v15;
}

- (void)addAudioSamples:(const signed __int16 *)samples count:(unint64_t)count
{
  audioPCMBuffers = [(RDSpeechDonation *)self audioPCMBuffers];
  v6 = [RDSpeechDonation convertRawAudiotoPCM:samples count:count];
  [audioPCMBuffers addObject:v6];
}

@end