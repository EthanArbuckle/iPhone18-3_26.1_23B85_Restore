@interface SVXDeviceSetupFlowDisplayKeyFrame
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SVXDeviceSetupFlowDisplayKeyFrame)initWithCoder:(id)coder;
- (SVXDeviceSetupFlowDisplayKeyFrame)initWithKeyFrameID:(int64_t)d text:(id)text offset:(double)offset duration:(double)duration;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SVXDeviceSetupFlowDisplayKeyFrame

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  keyFrameID = self->_keyFrameID;
  coderCopy = coder;
  v7 = [v4 numberWithInteger:keyFrameID];
  [coderCopy encodeObject:v7 forKey:@"SVXDeviceSetupFlowDisplayKeyFrame::keyFrameID"];

  [coderCopy encodeObject:self->_text forKey:@"SVXDeviceSetupFlowDisplayKeyFrame::text"];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_offset];
  [coderCopy encodeObject:v8 forKey:@"SVXDeviceSetupFlowDisplayKeyFrame::offset"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_duration];
  [coderCopy encodeObject:v9 forKey:@"SVXDeviceSetupFlowDisplayKeyFrame::duration"];
}

- (SVXDeviceSetupFlowDisplayKeyFrame)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeviceSetupFlowDisplayKeyFrame::keyFrameID"];
  integerValue = [v5 integerValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeviceSetupFlowDisplayKeyFrame::text"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeviceSetupFlowDisplayKeyFrame::offset"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeviceSetupFlowDisplayKeyFrame::duration"];

  [v11 doubleValue];
  v13 = v12;

  v14 = [(SVXDeviceSetupFlowDisplayKeyFrame *)self initWithKeyFrameID:integerValue text:v7 offset:v10 duration:v13];
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
      keyFrameID = self->_keyFrameID;
      if (keyFrameID == [(SVXDeviceSetupFlowDisplayKeyFrame *)v5 keyFrameID]&& (offset = self->_offset, [(SVXDeviceSetupFlowDisplayKeyFrame *)v5 offset], offset == v8) && (duration = self->_duration, [(SVXDeviceSetupFlowDisplayKeyFrame *)v5 duration], duration == v10))
      {
        text = [(SVXDeviceSetupFlowDisplayKeyFrame *)v5 text];
        text = self->_text;
        v11 = text == text || [(NSString *)text isEqual:text];
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
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:self->_keyFrameID];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_text hash]^ v4;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_offset];
  v7 = [v6 hash];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_duration];
  v9 = v7 ^ [v8 hash];

  return v5 ^ v9;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v11.receiver = self;
  v11.super_class = SVXDeviceSetupFlowDisplayKeyFrame;
  v5 = [(SVXDeviceSetupFlowDisplayKeyFrame *)&v11 description];
  keyFrameID = self->_keyFrameID;
  if (keyFrameID > 0xB)
  {
    v7 = @"(unknown)";
  }

  else
  {
    v7 = off_279C66F60[keyFrameID];
  }

  v8 = v7;
  v9 = [v4 initWithFormat:@"%@ {keyFrameID = %@, text = %@, offset = %f, duration = %f}", v5, v8, self->_text, *&self->_offset, *&self->_duration];

  return v9;
}

- (SVXDeviceSetupFlowDisplayKeyFrame)initWithKeyFrameID:(int64_t)d text:(id)text offset:(double)offset duration:(double)duration
{
  textCopy = text;
  v16.receiver = self;
  v16.super_class = SVXDeviceSetupFlowDisplayKeyFrame;
  v11 = [(SVXDeviceSetupFlowDisplayKeyFrame *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_keyFrameID = d;
    v13 = [textCopy copy];
    text = v12->_text;
    v12->_text = v13;

    v12->_offset = offset;
    v12->_duration = duration;
  }

  return v12;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SVXDeviceSetupFlowDisplayKeyFrameMutation alloc] initWithBaseModel:self];
    mutatorCopy[2](mutatorCopy, v5);
    generate = [(_SVXDeviceSetupFlowDisplayKeyFrameMutation *)v5 generate];
  }

  else
  {
    generate = [(SVXDeviceSetupFlowDisplayKeyFrame *)self copy];
  }

  return generate;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_alloc_init(_SVXDeviceSetupFlowDisplayKeyFrameMutation);
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v4);
  }

  generate = [(_SVXDeviceSetupFlowDisplayKeyFrameMutation *)v4 generate];

  return generate;
}

@end