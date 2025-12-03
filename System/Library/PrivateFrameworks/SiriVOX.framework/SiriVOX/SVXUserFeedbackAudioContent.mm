@interface SVXUserFeedbackAudioContent
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SVXUserFeedbackAudioContent)initWithCoder:(id)coder;
- (SVXUserFeedbackAudioContent)initWithItemURL:(id)l numberOfLoops:(unint64_t)loops fadeInDuration:(double)duration fadeOutDuration:(double)outDuration;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SVXUserFeedbackAudioContent

- (void)encodeWithCoder:(id)coder
{
  itemURL = self->_itemURL;
  coderCopy = coder;
  [coderCopy encodeObject:itemURL forKey:@"SVXUserFeedbackAudioContent::itemURL"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfLoops];
  [coderCopy encodeObject:v6 forKey:@"SVXUserFeedbackAudioContent::numberOfLoops"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_fadeInDuration];
  [coderCopy encodeObject:v7 forKey:@"SVXUserFeedbackAudioContent::fadeInDuration"];

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_fadeOutDuration];
  [coderCopy encodeObject:v8 forKey:@"SVXUserFeedbackAudioContent::fadeOutDuration"];
}

- (SVXUserFeedbackAudioContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXUserFeedbackAudioContent::itemURL"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXUserFeedbackAudioContent::numberOfLoops"];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXUserFeedbackAudioContent::fadeInDuration"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXUserFeedbackAudioContent::fadeOutDuration"];

  [v11 doubleValue];
  v13 = v12;

  v14 = [(SVXUserFeedbackAudioContent *)self initWithItemURL:v5 numberOfLoops:unsignedIntegerValue fadeInDuration:v10 fadeOutDuration:v13];
  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      numberOfLoops = self->_numberOfLoops;
      if (numberOfLoops == [(SVXUserFeedbackAudioContent *)v5 numberOfLoops]&& (fadeInDuration = self->_fadeInDuration, [(SVXUserFeedbackAudioContent *)v5 fadeInDuration], fadeInDuration == v8) && (fadeOutDuration = self->_fadeOutDuration, [(SVXUserFeedbackAudioContent *)v5 fadeOutDuration], fadeOutDuration == v10))
      {
        itemURL = [(SVXUserFeedbackAudioContent *)v5 itemURL];
        itemURL = self->_itemURL;
        v11 = itemURL == itemURL || [(NSURL *)itemURL isEqual:itemURL];
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

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v8.receiver = self;
  v8.super_class = SVXUserFeedbackAudioContent;
  v5 = [(SVXUserFeedbackAudioContent *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {itemURL = %@, numberOfLoops = %llu, fadeInDuration = %f, fadeOutDuration = %f}", v5, self->_itemURL, self->_numberOfLoops, *&self->_fadeInDuration, *&self->_fadeOutDuration];

  return v6;
}

- (SVXUserFeedbackAudioContent)initWithItemURL:(id)l numberOfLoops:(unint64_t)loops fadeInDuration:(double)duration fadeOutDuration:(double)outDuration
{
  lCopy = l;
  v15.receiver = self;
  v15.super_class = SVXUserFeedbackAudioContent;
  v11 = [(SVXUserFeedbackAudioContent *)&v15 init];
  if (v11)
  {
    v12 = [lCopy copy];
    itemURL = v11->_itemURL;
    v11->_itemURL = v12;

    v11->_numberOfLoops = loops;
    v11->_fadeInDuration = duration;
    v11->_fadeOutDuration = outDuration;
  }

  return v11;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SVXUserFeedbackAudioContentMutation alloc] initWithBaseModel:self];
    mutatorCopy[2](mutatorCopy, v5);
    generate = [(_SVXUserFeedbackAudioContentMutation *)v5 generate];
  }

  else
  {
    generate = [(SVXUserFeedbackAudioContent *)self copy];
  }

  return generate;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_alloc_init(_SVXUserFeedbackAudioContentMutation);
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v4);
  }

  generate = [(_SVXUserFeedbackAudioContentMutation *)v4 generate];

  return generate;
}

@end