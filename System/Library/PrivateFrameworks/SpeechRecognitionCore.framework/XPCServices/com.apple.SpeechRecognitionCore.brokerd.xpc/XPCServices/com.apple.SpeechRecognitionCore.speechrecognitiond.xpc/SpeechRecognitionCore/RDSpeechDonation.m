@interface RDSpeechDonation
- (RDSpeechDonation)initWithBundleID:(id)a3 donorReferenceID:(id)a4 locale:(id)a5 taskHint:(id)a6;
- (void)addAudioSamples:(const signed __int16 *)a3 count:(unint64_t)a4;
@end

@implementation RDSpeechDonation

- (RDSpeechDonation)initWithBundleID:(id)a3 donorReferenceID:(id)a4 locale:(id)a5 taskHint:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = RDSpeechDonation;
  v14 = [(RDSpeechDonation *)&v19 init];
  v15 = v14;
  if (v14)
  {
    [(RDSpeechDonation *)v14 setDonorBundleID:v10];
    [(RDSpeechDonation *)v15 setDonorReferenceID:v11];
    [(RDSpeechDonation *)v15 setLocale:v12];
    v16 = +[NSDate date];
    [(RDSpeechDonation *)v15 setRecordingStartDate:v16];

    [(RDSpeechDonation *)v15 setTaskHint:v13];
    v17 = objc_alloc_init(NSMutableArray);
    [(RDSpeechDonation *)v15 setAudioPCMBuffers:v17];
  }

  return v15;
}

- (void)addAudioSamples:(const signed __int16 *)a3 count:(unint64_t)a4
{
  v7 = [(RDSpeechDonation *)self audioPCMBuffers];
  v6 = [RDSpeechDonation convertRawAudiotoPCM:a3 count:a4];
  [v7 addObject:v6];
}

@end