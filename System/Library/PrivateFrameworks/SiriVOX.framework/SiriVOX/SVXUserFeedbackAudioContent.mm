@interface SVXUserFeedbackAudioContent
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SVXUserFeedbackAudioContent)initWithCoder:(id)a3;
- (SVXUserFeedbackAudioContent)initWithItemURL:(id)a3 numberOfLoops:(unint64_t)a4 fadeInDuration:(double)a5 fadeOutDuration:(double)a6;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SVXUserFeedbackAudioContent

- (void)encodeWithCoder:(id)a3
{
  itemURL = self->_itemURL;
  v5 = a3;
  [v5 encodeObject:itemURL forKey:@"SVXUserFeedbackAudioContent::itemURL"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfLoops];
  [v5 encodeObject:v6 forKey:@"SVXUserFeedbackAudioContent::numberOfLoops"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_fadeInDuration];
  [v5 encodeObject:v7 forKey:@"SVXUserFeedbackAudioContent::fadeInDuration"];

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_fadeOutDuration];
  [v5 encodeObject:v8 forKey:@"SVXUserFeedbackAudioContent::fadeOutDuration"];
}

- (SVXUserFeedbackAudioContent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXUserFeedbackAudioContent::itemURL"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXUserFeedbackAudioContent::numberOfLoops"];
  v7 = [v6 unsignedIntegerValue];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXUserFeedbackAudioContent::fadeInDuration"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXUserFeedbackAudioContent::fadeOutDuration"];

  [v11 doubleValue];
  v13 = v12;

  v14 = [(SVXUserFeedbackAudioContent *)self initWithItemURL:v5 numberOfLoops:v7 fadeInDuration:v10 fadeOutDuration:v13];
  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      numberOfLoops = self->_numberOfLoops;
      if (numberOfLoops == [(SVXUserFeedbackAudioContent *)v5 numberOfLoops]&& (fadeInDuration = self->_fadeInDuration, [(SVXUserFeedbackAudioContent *)v5 fadeInDuration], fadeInDuration == v8) && (fadeOutDuration = self->_fadeOutDuration, [(SVXUserFeedbackAudioContent *)v5 fadeOutDuration], fadeOutDuration == v10))
      {
        v13 = [(SVXUserFeedbackAudioContent *)v5 itemURL];
        itemURL = self->_itemURL;
        v11 = itemURL == v13 || [(NSURL *)itemURL isEqual:v13];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSURL *)self->_itemURL hash];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfLoops];
  v5 = [v4 hash] ^ v3;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_fadeInDuration];
  v7 = [v6 hash];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_fadeOutDuration];
  v9 = v7 ^ [v8 hash];

  return v5 ^ v9;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v8.receiver = self;
  v8.super_class = SVXUserFeedbackAudioContent;
  v5 = [(SVXUserFeedbackAudioContent *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {itemURL = %@, numberOfLoops = %llu, fadeInDuration = %f, fadeOutDuration = %f}", v5, self->_itemURL, self->_numberOfLoops, *&self->_fadeInDuration, *&self->_fadeOutDuration];

  return v6;
}

- (SVXUserFeedbackAudioContent)initWithItemURL:(id)a3 numberOfLoops:(unint64_t)a4 fadeInDuration:(double)a5 fadeOutDuration:(double)a6
{
  v10 = a3;
  v15.receiver = self;
  v15.super_class = SVXUserFeedbackAudioContent;
  v11 = [(SVXUserFeedbackAudioContent *)&v15 init];
  if (v11)
  {
    v12 = [v10 copy];
    itemURL = v11->_itemURL;
    v11->_itemURL = v12;

    v11->_numberOfLoops = a4;
    v11->_fadeInDuration = a5;
    v11->_fadeOutDuration = a6;
  }

  return v11;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_SVXUserFeedbackAudioContentMutation alloc] initWithBaseModel:self];
    v4[2](v4, v5);
    v6 = [(_SVXUserFeedbackAudioContentMutation *)v5 generate];
  }

  else
  {
    v6 = [(SVXUserFeedbackAudioContent *)self copy];
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_SVXUserFeedbackAudioContentMutation);
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [(_SVXUserFeedbackAudioContentMutation *)v4 generate];

  return v5;
}

@end