@interface _SVXDeviceSetupFlowDisplayKeyFrameMutation
- (_SVXDeviceSetupFlowDisplayKeyFrameMutation)initWithBaseModel:(id)model;
- (id)generate;
@end

@implementation _SVXDeviceSetupFlowDisplayKeyFrameMutation

- (id)generate
{
  baseModel = self->_baseModel;
  if (!baseModel)
  {
    v4 = [[SVXDeviceSetupFlowDisplayKeyFrame alloc] initWithKeyFrameID:self->_keyFrameID text:self->_text offset:self->_offset duration:self->_duration];
    goto LABEL_5;
  }

  if ((*&self->_mutationFlags & 1) == 0)
  {
    v4 = [(SVXDeviceSetupFlowDisplayKeyFrame *)baseModel copy];
LABEL_5:
    v5 = v4;
    goto LABEL_17;
  }

  if ((*&self->_mutationFlags & 2) != 0)
  {
    keyFrameID = self->_keyFrameID;
    if ((*&self->_mutationFlags & 4) != 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    keyFrameID = [(SVXDeviceSetupFlowDisplayKeyFrame *)baseModel keyFrameID];
    if ((*&self->_mutationFlags & 4) != 0)
    {
LABEL_8:
      text = self->_text;
      goto LABEL_11;
    }
  }

  text = [(SVXDeviceSetupFlowDisplayKeyFrame *)self->_baseModel text];
LABEL_11:
  v8 = text;
  if ((*&self->_mutationFlags & 8) != 0)
  {
    offset = self->_offset;
    if ((*&self->_mutationFlags & 0x10) != 0)
    {
      goto LABEL_13;
    }

LABEL_15:
    [(SVXDeviceSetupFlowDisplayKeyFrame *)self->_baseModel duration];
    duration = v12;
    goto LABEL_16;
  }

  [(SVXDeviceSetupFlowDisplayKeyFrame *)self->_baseModel offset];
  offset = v9;
  if ((*&self->_mutationFlags & 0x10) == 0)
  {
    goto LABEL_15;
  }

LABEL_13:
  duration = self->_duration;
LABEL_16:
  v5 = [[SVXDeviceSetupFlowDisplayKeyFrame alloc] initWithKeyFrameID:keyFrameID text:v8 offset:offset duration:duration];

LABEL_17:

  return v5;
}

- (_SVXDeviceSetupFlowDisplayKeyFrameMutation)initWithBaseModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = _SVXDeviceSetupFlowDisplayKeyFrameMutation;
  v6 = [(_SVXDeviceSetupFlowDisplayKeyFrameMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, model);
  }

  return v7;
}

@end