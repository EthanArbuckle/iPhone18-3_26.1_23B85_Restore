@interface SVXDeviceSetupFlowScene
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SVXDeviceSetupFlowScene)initWithCoder:(id)a3;
- (SVXDeviceSetupFlowScene)initWithSceneID:(int64_t)a3 displayKeyFrames:(id)a4;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SVXDeviceSetupFlowScene

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  sceneID = self->_sceneID;
  v7 = a3;
  v6 = [v4 numberWithInteger:sceneID];
  [v7 encodeObject:v6 forKey:@"SVXDeviceSetupFlowScene::sceneID"];

  [v7 encodeObject:self->_displayKeyFrames forKey:@"SVXDeviceSetupFlowScene::displayKeyFrames"];
}

- (SVXDeviceSetupFlowScene)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeviceSetupFlowScene::sceneID"];
  v6 = [v5 integerValue];

  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"SVXDeviceSetupFlowScene::displayKeyFrames"];

  v11 = [(SVXDeviceSetupFlowScene *)self initWithSceneID:v6 displayKeyFrames:v10];
  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      sceneID = self->_sceneID;
      if (sceneID == [(SVXDeviceSetupFlowScene *)v5 sceneID])
      {
        v7 = [(SVXDeviceSetupFlowScene *)v5 displayKeyFrames];
        displayKeyFrames = self->_displayKeyFrames;
        v9 = displayKeyFrames == v7 || [(NSArray *)displayKeyFrames isEqual:v7];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:self->_sceneID];
  v4 = [v3 hash];
  v5 = [(NSArray *)self->_displayKeyFrames hash];

  return v5 ^ v4;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v11.receiver = self;
  v11.super_class = SVXDeviceSetupFlowScene;
  v5 = [(SVXDeviceSetupFlowScene *)&v11 description];
  sceneID = self->_sceneID;
  if (sceneID > 9)
  {
    v7 = @"(unknown)";
  }

  else
  {
    v7 = off_279C689C8[sceneID];
  }

  v8 = v7;
  v9 = [v4 initWithFormat:@"%@ {sceneID = %@, displayKeyFrames = %@}", v5, v8, self->_displayKeyFrames];

  return v9;
}

- (SVXDeviceSetupFlowScene)initWithSceneID:(int64_t)a3 displayKeyFrames:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = SVXDeviceSetupFlowScene;
  v7 = [(SVXDeviceSetupFlowScene *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_sceneID = a3;
    v9 = [v6 copy];
    displayKeyFrames = v8->_displayKeyFrames;
    v8->_displayKeyFrames = v9;
  }

  return v8;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_SVXDeviceSetupFlowSceneMutation alloc] initWithBaseModel:self];
    v4[2](v4, v5);
    v6 = [(_SVXDeviceSetupFlowSceneMutation *)v5 generate];
  }

  else
  {
    v6 = [(SVXDeviceSetupFlowScene *)self copy];
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_SVXDeviceSetupFlowSceneMutation);
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [(_SVXDeviceSetupFlowSceneMutation *)v4 generate];

  return v5;
}

@end