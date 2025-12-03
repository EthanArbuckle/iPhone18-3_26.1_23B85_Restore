@interface SVXDeviceSetupFlowScene
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SVXDeviceSetupFlowScene)initWithCoder:(id)coder;
- (SVXDeviceSetupFlowScene)initWithSceneID:(int64_t)d displayKeyFrames:(id)frames;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SVXDeviceSetupFlowScene

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  sceneID = self->_sceneID;
  coderCopy = coder;
  v6 = [v4 numberWithInteger:sceneID];
  [coderCopy encodeObject:v6 forKey:@"SVXDeviceSetupFlowScene::sceneID"];

  [coderCopy encodeObject:self->_displayKeyFrames forKey:@"SVXDeviceSetupFlowScene::displayKeyFrames"];
}

- (SVXDeviceSetupFlowScene)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeviceSetupFlowScene::sceneID"];
  integerValue = [v5 integerValue];

  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"SVXDeviceSetupFlowScene::displayKeyFrames"];

  v11 = [(SVXDeviceSetupFlowScene *)self initWithSceneID:integerValue displayKeyFrames:v10];
  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      sceneID = self->_sceneID;
      if (sceneID == [(SVXDeviceSetupFlowScene *)v5 sceneID])
      {
        displayKeyFrames = [(SVXDeviceSetupFlowScene *)v5 displayKeyFrames];
        displayKeyFrames = self->_displayKeyFrames;
        v9 = displayKeyFrames == displayKeyFrames || [(NSArray *)displayKeyFrames isEqual:displayKeyFrames];
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

- (id)_descriptionWithIndent:(unint64_t)indent
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

- (SVXDeviceSetupFlowScene)initWithSceneID:(int64_t)d displayKeyFrames:(id)frames
{
  framesCopy = frames;
  v12.receiver = self;
  v12.super_class = SVXDeviceSetupFlowScene;
  v7 = [(SVXDeviceSetupFlowScene *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_sceneID = d;
    v9 = [framesCopy copy];
    displayKeyFrames = v8->_displayKeyFrames;
    v8->_displayKeyFrames = v9;
  }

  return v8;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SVXDeviceSetupFlowSceneMutation alloc] initWithBaseModel:self];
    mutatorCopy[2](mutatorCopy, v5);
    generate = [(_SVXDeviceSetupFlowSceneMutation *)v5 generate];
  }

  else
  {
    generate = [(SVXDeviceSetupFlowScene *)self copy];
  }

  return generate;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_alloc_init(_SVXDeviceSetupFlowSceneMutation);
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v4);
  }

  generate = [(_SVXDeviceSetupFlowSceneMutation *)v4 generate];

  return generate;
}

@end