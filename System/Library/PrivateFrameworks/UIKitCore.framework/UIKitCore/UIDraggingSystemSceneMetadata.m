@interface UIDraggingSystemSceneMetadata
- (UIDraggingSystemSceneMetadata)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIDraggingSystemSceneMetadata

- (UIDraggingSystemSceneMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = UIDraggingSystemSceneMetadata;
  v5 = [(UIDraggingSystemSceneMetadata *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityType"];
    activityType = v5->_activityType;
    v5->_activityType = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sceneIdentifier"];
    sceneIdentifier = v5->_sceneIdentifier;
    v5->_sceneIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UIDraggingSystemSceneMetadata *)self activityType];
  [v4 encodeObject:v5 forKey:@"activityType"];

  v6 = [(UIDraggingSystemSceneMetadata *)self sceneIdentifier];
  [v4 encodeObject:v6 forKey:@"sceneIdentifier"];
}

@end