@interface SVXDeviceSetupFlowDisplayKeyFrame
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SVXDeviceSetupFlowDisplayKeyFrame)initWithCoder:(id)a3;
- (SVXDeviceSetupFlowDisplayKeyFrame)initWithKeyFrameID:(int64_t)a3 text:(id)a4 offset:(double)a5 duration:(double)a6;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SVXDeviceSetupFlowDisplayKeyFrame

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  keyFrameID = self->_keyFrameID;
  v6 = a3;
  v7 = [v4 numberWithInteger:keyFrameID];
  [v6 encodeObject:v7 forKey:@"SVXDeviceSetupFlowDisplayKeyFrame::keyFrameID"];

  [v6 encodeObject:self->_text forKey:@"SVXDeviceSetupFlowDisplayKeyFrame::text"];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_offset];
  [v6 encodeObject:v8 forKey:@"SVXDeviceSetupFlowDisplayKeyFrame::offset"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_duration];
  [v6 encodeObject:v9 forKey:@"SVXDeviceSetupFlowDisplayKeyFrame::duration"];
}

- (SVXDeviceSetupFlowDisplayKeyFrame)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeviceSetupFlowDisplayKeyFrame::keyFrameID"];
  v6 = [v5 integerValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeviceSetupFlowDisplayKeyFrame::text"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeviceSetupFlowDisplayKeyFrame::offset"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeviceSetupFlowDisplayKeyFrame::duration"];

  [v11 doubleValue];
  v13 = v12;

  v14 = [(SVXDeviceSetupFlowDisplayKeyFrame *)self initWithKeyFrameID:v6 text:v7 offset:v10 duration:v13];
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
      keyFrameID = self->_keyFrameID;
      if (keyFrameID == [(SVXDeviceSetupFlowDisplayKeyFrame *)v5 keyFrameID]&& (offset = self->_offset, [(SVXDeviceSetupFlowDisplayKeyFrame *)v5 offset], offset == v8) && (duration = self->_duration, [(SVXDeviceSetupFlowDisplayKeyFrame *)v5 duration], duration == v10))
      {
        v13 = [(SVXDeviceSetupFlowDisplayKeyFrame *)v5 text];
        text = self->_text;
        v11 = text == v13 || [(NSString *)text isEqual:v13];
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

- (id)_descriptionWithIndent:(unint64_t)a3
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

- (SVXDeviceSetupFlowDisplayKeyFrame)initWithKeyFrameID:(int64_t)a3 text:(id)a4 offset:(double)a5 duration:(double)a6
{
  v10 = a4;
  v16.receiver = self;
  v16.super_class = SVXDeviceSetupFlowDisplayKeyFrame;
  v11 = [(SVXDeviceSetupFlowDisplayKeyFrame *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_keyFrameID = a3;
    v13 = [v10 copy];
    text = v12->_text;
    v12->_text = v13;

    v12->_offset = a5;
    v12->_duration = a6;
  }

  return v12;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_SVXDeviceSetupFlowDisplayKeyFrameMutation alloc] initWithBaseModel:self];
    v4[2](v4, v5);
    v6 = [(_SVXDeviceSetupFlowDisplayKeyFrameMutation *)v5 generate];
  }

  else
  {
    v6 = [(SVXDeviceSetupFlowDisplayKeyFrame *)self copy];
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_SVXDeviceSetupFlowDisplayKeyFrameMutation);
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [(_SVXDeviceSetupFlowDisplayKeyFrameMutation *)v4 generate];

  return v5;
}

@end