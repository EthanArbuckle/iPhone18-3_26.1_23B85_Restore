@interface WFContextualMediaDescriptor
- (WFContextualMediaDescriptor)initWithCoder:(id)coder;
- (WFContextualMediaDescriptor)initWithMediaItem:(id)item serializedRepresentation:(id)representation;
- (WFContextualMediaDescriptor)initWithPlayMediaIntent:(id)intent artwork:(id)artwork;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFContextualMediaDescriptor

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  mediaItem = [(WFContextualMediaDescriptor *)self mediaItem];
  [coderCopy encodeObject:mediaItem forKey:@"mediaItem"];

  serializedRepresentation = [(WFContextualMediaDescriptor *)self serializedRepresentation];
  [coderCopy encodeObject:serializedRepresentation forKey:@"serializedRepresentation"];

  intent = [(WFContextualMediaDescriptor *)self intent];
  [coderCopy encodeObject:intent forKey:@"intent"];

  artwork = [(WFContextualMediaDescriptor *)self artwork];
  [coderCopy encodeObject:artwork forKey:@"artwork"];
}

- (WFContextualMediaDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = WFContextualMediaDescriptor;
  v5 = [(WFContextualMediaDescriptor *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaItem"];
    mediaItem = v5->_mediaItem;
    v5->_mediaItem = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v8 setWithObjects:{v9, v10, v11, v12, v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"serializedRepresentation"];
    serializedRepresentation = v5->_serializedRepresentation;
    v5->_serializedRepresentation = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intent"];
    intent = v5->_intent;
    v5->_intent = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"artwork"];
    artwork = v5->_artwork;
    v5->_artwork = v19;

    v21 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [WFContextualMediaDescriptor alloc];
  mediaItem = [(WFContextualMediaDescriptor *)self mediaItem];
  serializedRepresentation = [(WFContextualMediaDescriptor *)self serializedRepresentation];
  v7 = [(WFContextualMediaDescriptor *)v4 initWithMediaItem:mediaItem serializedRepresentation:serializedRepresentation];

  return v7;
}

- (WFContextualMediaDescriptor)initWithPlayMediaIntent:(id)intent artwork:(id)artwork
{
  intentCopy = intent;
  artworkCopy = artwork;
  v13.receiver = self;
  v13.super_class = WFContextualMediaDescriptor;
  v8 = [(WFContextualMediaDescriptor *)&v13 init];
  if (v8)
  {
    v9 = [intentCopy copy];
    intent = v8->_intent;
    v8->_intent = v9;

    objc_storeStrong(&v8->_artwork, artwork);
    v11 = v8;
  }

  return v8;
}

- (WFContextualMediaDescriptor)initWithMediaItem:(id)item serializedRepresentation:(id)representation
{
  itemCopy = item;
  representationCopy = representation;
  v13.receiver = self;
  v13.super_class = WFContextualMediaDescriptor;
  v9 = [(WFContextualMediaDescriptor *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mediaItem, item);
    objc_storeStrong(&v10->_serializedRepresentation, representation);
    v11 = v10;
  }

  return v10;
}

@end