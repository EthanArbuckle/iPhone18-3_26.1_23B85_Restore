@interface UIDraggingSystemSceneMetadata
- (UIDraggingSystemSceneMetadata)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIDraggingSystemSceneMetadata

- (UIDraggingSystemSceneMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = UIDraggingSystemSceneMetadata;
  v5 = [(UIDraggingSystemSceneMetadata *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityType"];
    activityType = v5->_activityType;
    v5->_activityType = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sceneIdentifier"];
    sceneIdentifier = v5->_sceneIdentifier;
    v5->_sceneIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  activityType = [(UIDraggingSystemSceneMetadata *)self activityType];
  [coderCopy encodeObject:activityType forKey:@"activityType"];

  sceneIdentifier = [(UIDraggingSystemSceneMetadata *)self sceneIdentifier];
  [coderCopy encodeObject:sceneIdentifier forKey:@"sceneIdentifier"];
}

@end