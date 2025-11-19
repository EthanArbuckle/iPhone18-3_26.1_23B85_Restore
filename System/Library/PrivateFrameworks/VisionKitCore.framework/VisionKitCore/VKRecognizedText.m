@interface VKRecognizedText
- (BOOL)shouldAssociateWithItem:(id)a3;
- (NSString)transcript;
- (VKRecognizedText)initWithFrameInfo:(id)a3 textBlockObservation:(id)a4;
- (VNRecognizedTextObservation)observation;
- (id)description;
- (void)associateWithItem:(id)a3;
@end

@implementation VKRecognizedText

- (VKRecognizedText)initWithFrameInfo:(id)a3 textBlockObservation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 getCROutputRegion];
  v15.receiver = self;
  v15.super_class = VKRecognizedText;
  v9 = -[VKRecognizedItem initWithFrameInfo:rectangleObservation:layoutDirection:](&v15, sel_initWithFrameInfo_rectangleObservation_layoutDirection_, v7, v6, [v8 layoutDirection]);

  if (v9)
  {
    v10 = [MEMORY[0x1E695DF90] dictionary];
    transcripts = v9->_transcripts;
    v9->_transcripts = v10;

    v12 = v9->_transcripts;
    v13 = [v6 getTranscript];
    [(NSMutableDictionary *)v12 setObject:&unk_1F2C38F38 forKeyedSubscript:v13];
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VKRecognizedText;
  v4 = [(VKRecognizedText *)&v8 description];
  v5 = [(VKRecognizedText *)self transcript];
  v6 = [v3 stringWithFormat:@"%@ transcript:%@", v4, v5];

  return v6;
}

- (BOOL)shouldAssociateWithItem:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = VKRecognizedText;
  if ([(VKRecognizedItem *)&v14 shouldAssociateWithItem:v4])
  {
    v5 = objc_opt_class();
    v6 = VKDynamicCast(v5, v4);
    v7 = [v6 transcript];
    v8 = vcvtpd_s64_f64([v7 length] * 0.1);
    v9 = [(VKRecognizedText *)self transcript];
    v10 = [v7 editDistanceFromString:v9 threshold:v8];

    v12 = v10 != 0x7FFFFFFF && v10 < v8;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)associateWithItem:(id)a3
{
  v12.receiver = self;
  v12.super_class = VKRecognizedText;
  v4 = a3;
  [(VKRecognizedItem *)&v12 associateWithItem:v4];
  v5 = objc_opt_class();
  v6 = VKCheckedDynamicCast(v5, v4);

  v7 = [v6 transcript];
  v8 = [(NSMutableDictionary *)self->_transcripts objectForKeyedSubscript:v7];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 integerValue];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:v10 + 1];
    [(NSMutableDictionary *)self->_transcripts setObject:v11 forKeyedSubscript:v7];
  }

  else
  {
    [(NSMutableDictionary *)self->_transcripts setObject:&unk_1F2C38F38 forKeyedSubscript:v7];
  }
}

- (VNRecognizedTextObservation)observation
{
  v3 = objc_opt_class();
  v7.receiver = self;
  v7.super_class = VKRecognizedText;
  v4 = [(VKRecognizedItem *)&v7 observation];
  v5 = VKDynamicCast(v3, v4);

  return v5;
}

- (NSString)transcript
{
  v2 = [(NSMutableDictionary *)self->_transcripts keysSortedByValueUsingComparator:&__block_literal_global_33];
  v3 = [v2 lastObject];

  return v3;
}

@end