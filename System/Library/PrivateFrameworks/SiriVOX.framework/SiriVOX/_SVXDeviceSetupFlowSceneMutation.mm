@interface _SVXDeviceSetupFlowSceneMutation
- (_SVXDeviceSetupFlowSceneMutation)initWithBaseModel:(id)model;
- (id)generate;
@end

@implementation _SVXDeviceSetupFlowSceneMutation

- (id)generate
{
  baseModel = self->_baseModel;
  if (!baseModel)
  {
    v4 = [[SVXDeviceSetupFlowScene alloc] initWithSceneID:self->_sceneID displayKeyFrames:self->_displayKeyFrames];
    goto LABEL_5;
  }

  if ((*&self->_mutationFlags & 1) == 0)
  {
    v4 = [(SVXDeviceSetupFlowScene *)baseModel copy];
LABEL_5:
    v5 = v4;
    goto LABEL_12;
  }

  if ((*&self->_mutationFlags & 2) != 0)
  {
    sceneID = self->_sceneID;
    if ((*&self->_mutationFlags & 4) != 0)
    {
      goto LABEL_8;
    }

LABEL_10:
    displayKeyFrames = [(SVXDeviceSetupFlowScene *)self->_baseModel displayKeyFrames];
    goto LABEL_11;
  }

  sceneID = [(SVXDeviceSetupFlowScene *)baseModel sceneID];
  if ((*&self->_mutationFlags & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  displayKeyFrames = self->_displayKeyFrames;
LABEL_11:
  v8 = displayKeyFrames;
  v5 = [[SVXDeviceSetupFlowScene alloc] initWithSceneID:sceneID displayKeyFrames:displayKeyFrames];

LABEL_12:

  return v5;
}

- (_SVXDeviceSetupFlowSceneMutation)initWithBaseModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = _SVXDeviceSetupFlowSceneMutation;
  v6 = [(_SVXDeviceSetupFlowSceneMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, model);
  }

  return v7;
}

@end