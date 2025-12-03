@interface OZARPlaneInfo
+ (id)planeListWithARFrame:(id)frame;
+ (id)planeListWithAnchors:(id)anchors;
- (OZARPlaneInfo)initWithARPlaneAnchor:(id)anchor;
- (OZARPlaneInfo)initWithCoder:(id)coder;
- (uint64_t)simdTransform;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation OZARPlaneInfo

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OZARPlaneInfo;
  [(OZARPlaneInfo *)&v3 dealloc];
}

- (OZARPlaneInfo)initWithARPlaneAnchor:(id)anchor
{
  v4 = [(OZARPlaneInfo *)self init];
  if (v4)
  {
    -[OZARPlaneInfo setAlignment:](v4, "setAlignment:", [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(anchor, "alignment")}]);
    -[OZARPlaneInfo setClassification:](v4, "setClassification:", [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(anchor, "classification")}]);
    v5 = MEMORY[0x277CCAE60];
    [anchor extent];
    -[OZARPlaneInfo setExtent:](v4, "setExtent:", [v5 PCValueWithSIMDFloat3:?]);
    v6 = MEMORY[0x277CCAE60];
    [anchor center];
    -[OZARPlaneInfo setCenter:](v4, "setCenter:", [v6 PCValueWithSIMDFloat3:?]);
    v7 = MEMORY[0x277CCAE60];
    [anchor transform];
    -[OZARPlaneInfo setTransform:](v4, "setTransform:", [v7 PCValueWithSIMDFloat4x4:?]);
    -[OZARPlaneInfo setIdentifier:](v4, "setIdentifier:", [anchor identifier]);
  }

  return v4;
}

+ (id)planeListWithARFrame:(id)frame
{
  v18 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  anchors = [frame anchors];
  v6 = [anchors countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(anchors);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [[OZARPlaneInfo alloc] initWithARPlaneAnchor:v10];
          [array addObject:v11];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [anchors countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return array;
}

+ (id)planeListWithAnchors:(id)anchors
{
  v16 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [anchors countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(anchors);
        }

        v9 = [[OZARPlaneInfo alloc] initWithARPlaneAnchor:*(*(&v11 + 1) + 8 * v8)];
        [array addObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [anchors countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (uint64_t)simdTransform
{
  transform = [self transform];

  return [transform PCSIMDFloat4x4Value];
}

- (OZARPlaneInfo)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = OZARPlaneInfo;
  v4 = [(OZARPlaneInfo *)&v6 init];
  if (v4)
  {
    -[OZARPlaneInfo setAlignment:](v4, "setAlignment:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"alignment"]);
    -[OZARPlaneInfo setClassification:](v4, "setClassification:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"classification"]);
    -[OZARPlaneInfo setExtent:](v4, "setExtent:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"extent"]);
    -[OZARPlaneInfo setCenter:](v4, "setCenter:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"center"]);
    -[OZARPlaneInfo setTransform:](v4, "setTransform:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"transform"]);
    -[OZARPlaneInfo setIdentifier:](v4, "setIdentifier:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"identifier"]);
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:-[OZARPlaneInfo alignment](self forKey:{"alignment"), @"alignment"}];
  [coder encodeObject:-[OZARPlaneInfo classification](self forKey:{"classification"), @"classification"}];
  [coder encodeObject:-[OZARPlaneInfo extent](self forKey:{"extent"), @"extent"}];
  [coder encodeObject:-[OZARPlaneInfo center](self forKey:{"center"), @"center"}];
  [coder encodeObject:-[OZARPlaneInfo transform](self forKey:{"transform"), @"transform"}];
  identifier = [(OZARPlaneInfo *)self identifier];

  [coder encodeObject:identifier forKey:@"identifier"];
}

@end