@interface WFContextualMediaDescriptor
- (WFContextualMediaDescriptor)initWithCoder:(id)a3;
- (WFContextualMediaDescriptor)initWithMediaItem:(id)a3 serializedRepresentation:(id)a4;
- (WFContextualMediaDescriptor)initWithPlayMediaIntent:(id)a3 artwork:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFContextualMediaDescriptor

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFContextualMediaDescriptor *)self mediaItem];
  [v4 encodeObject:v5 forKey:@"mediaItem"];

  v6 = [(WFContextualMediaDescriptor *)self serializedRepresentation];
  [v4 encodeObject:v6 forKey:@"serializedRepresentation"];

  v7 = [(WFContextualMediaDescriptor *)self intent];
  [v4 encodeObject:v7 forKey:@"intent"];

  v8 = [(WFContextualMediaDescriptor *)self artwork];
  [v4 encodeObject:v8 forKey:@"artwork"];
}

- (WFContextualMediaDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = WFContextualMediaDescriptor;
  v5 = [(WFContextualMediaDescriptor *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mediaItem"];
    mediaItem = v5->_mediaItem;
    v5->_mediaItem = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v8 setWithObjects:{v9, v10, v11, v12, v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"serializedRepresentation"];
    serializedRepresentation = v5->_serializedRepresentation;
    v5->_serializedRepresentation = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intent"];
    intent = v5->_intent;
    v5->_intent = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"artwork"];
    artwork = v5->_artwork;
    v5->_artwork = v19;

    v21 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [WFContextualMediaDescriptor alloc];
  v5 = [(WFContextualMediaDescriptor *)self mediaItem];
  v6 = [(WFContextualMediaDescriptor *)self serializedRepresentation];
  v7 = [(WFContextualMediaDescriptor *)v4 initWithMediaItem:v5 serializedRepresentation:v6];

  return v7;
}

- (WFContextualMediaDescriptor)initWithPlayMediaIntent:(id)a3 artwork:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = WFContextualMediaDescriptor;
  v8 = [(WFContextualMediaDescriptor *)&v13 init];
  if (v8)
  {
    v9 = [v6 copy];
    intent = v8->_intent;
    v8->_intent = v9;

    objc_storeStrong(&v8->_artwork, a4);
    v11 = v8;
  }

  return v8;
}

- (WFContextualMediaDescriptor)initWithMediaItem:(id)a3 serializedRepresentation:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = WFContextualMediaDescriptor;
  v9 = [(WFContextualMediaDescriptor *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mediaItem, a3);
    objc_storeStrong(&v10->_serializedRepresentation, a4);
    v11 = v10;
  }

  return v10;
}

@end