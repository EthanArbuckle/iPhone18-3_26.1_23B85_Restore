@interface VKRecognizedText
- (BOOL)shouldAssociateWithItem:(id)item;
- (NSString)transcript;
- (VKRecognizedText)initWithFrameInfo:(id)info textBlockObservation:(id)observation;
- (VNRecognizedTextObservation)observation;
- (id)description;
- (void)associateWithItem:(id)item;
@end

@implementation VKRecognizedText

- (VKRecognizedText)initWithFrameInfo:(id)info textBlockObservation:(id)observation
{
  observationCopy = observation;
  infoCopy = info;
  getCROutputRegion = [observationCopy getCROutputRegion];
  v15.receiver = self;
  v15.super_class = VKRecognizedText;
  v9 = -[VKRecognizedItem initWithFrameInfo:rectangleObservation:layoutDirection:](&v15, sel_initWithFrameInfo_rectangleObservation_layoutDirection_, infoCopy, observationCopy, [getCROutputRegion layoutDirection]);

  if (v9)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    transcripts = v9->_transcripts;
    v9->_transcripts = dictionary;

    v12 = v9->_transcripts;
    getTranscript = [observationCopy getTranscript];
    [(NSMutableDictionary *)v12 setObject:&unk_1F2C38F38 forKeyedSubscript:getTranscript];
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VKRecognizedText;
  v4 = [(VKRecognizedText *)&v8 description];
  transcript = [(VKRecognizedText *)self transcript];
  v6 = [v3 stringWithFormat:@"%@ transcript:%@", v4, transcript];

  return v6;
}

- (BOOL)shouldAssociateWithItem:(id)item
{
  itemCopy = item;
  v14.receiver = self;
  v14.super_class = VKRecognizedText;
  if ([(VKRecognizedItem *)&v14 shouldAssociateWithItem:itemCopy])
  {
    v5 = objc_opt_class();
    v6 = VKDynamicCast(v5, itemCopy);
    transcript = [v6 transcript];
    v8 = vcvtpd_s64_f64([transcript length] * 0.1);
    transcript2 = [(VKRecognizedText *)self transcript];
    v10 = [transcript editDistanceFromString:transcript2 threshold:v8];

    v12 = v10 != 0x7FFFFFFF && v10 < v8;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)associateWithItem:(id)item
{
  v12.receiver = self;
  v12.super_class = VKRecognizedText;
  itemCopy = item;
  [(VKRecognizedItem *)&v12 associateWithItem:itemCopy];
  v5 = objc_opt_class();
  v6 = VKCheckedDynamicCast(v5, itemCopy);

  transcript = [v6 transcript];
  v8 = [(NSMutableDictionary *)self->_transcripts objectForKeyedSubscript:transcript];
  v9 = v8;
  if (v8)
  {
    integerValue = [v8 integerValue];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue + 1];
    [(NSMutableDictionary *)self->_transcripts setObject:v11 forKeyedSubscript:transcript];
  }

  else
  {
    [(NSMutableDictionary *)self->_transcripts setObject:&unk_1F2C38F38 forKeyedSubscript:transcript];
  }
}

- (VNRecognizedTextObservation)observation
{
  v3 = objc_opt_class();
  v7.receiver = self;
  v7.super_class = VKRecognizedText;
  observation = [(VKRecognizedItem *)&v7 observation];
  v5 = VKDynamicCast(v3, observation);

  return v5;
}

- (NSString)transcript
{
  v2 = [(NSMutableDictionary *)self->_transcripts keysSortedByValueUsingComparator:&__block_literal_global_33];
  lastObject = [v2 lastObject];

  return lastObject;
}

@end