@interface OZARPlaneInfo
+ (id)planeListWithARFrame:(id)a3;
+ (id)planeListWithAnchors:(id)a3;
- (OZARPlaneInfo)initWithARPlaneAnchor:(id)a3;
- (OZARPlaneInfo)initWithCoder:(id)a3;
- (uint64_t)simdTransform;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation OZARPlaneInfo

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OZARPlaneInfo;
  [(OZARPlaneInfo *)&v3 dealloc];
}

- (OZARPlaneInfo)initWithARPlaneAnchor:(id)a3
{
  v4 = [(OZARPlaneInfo *)self init];
  if (v4)
  {
    -[OZARPlaneInfo setAlignment:](v4, "setAlignment:", [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a3, "alignment")}]);
    -[OZARPlaneInfo setClassification:](v4, "setClassification:", [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a3, "classification")}]);
    v5 = MEMORY[0x277CCAE60];
    [a3 extent];
    -[OZARPlaneInfo setExtent:](v4, "setExtent:", [v5 PCValueWithSIMDFloat3:?]);
    v6 = MEMORY[0x277CCAE60];
    [a3 center];
    -[OZARPlaneInfo setCenter:](v4, "setCenter:", [v6 PCValueWithSIMDFloat3:?]);
    v7 = MEMORY[0x277CCAE60];
    [a3 transform];
    -[OZARPlaneInfo setTransform:](v4, "setTransform:", [v7 PCValueWithSIMDFloat4x4:?]);
    -[OZARPlaneInfo setIdentifier:](v4, "setIdentifier:", [a3 identifier]);
  }

  return v4;
}

+ (id)planeListWithARFrame:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a3 anchors];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [[OZARPlaneInfo alloc] initWithARPlaneAnchor:v10];
          [v4 addObject:v11];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)planeListWithAnchors:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(a3);
        }

        v9 = [[OZARPlaneInfo alloc] initWithARPlaneAnchor:*(*(&v11 + 1) + 8 * v8)];
        [v4 addObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v4;
}

- (uint64_t)simdTransform
{
  v1 = [a1 transform];

  return [v1 PCSIMDFloat4x4Value];
}

- (OZARPlaneInfo)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = OZARPlaneInfo;
  v4 = [(OZARPlaneInfo *)&v6 init];
  if (v4)
  {
    -[OZARPlaneInfo setAlignment:](v4, "setAlignment:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"alignment"]);
    -[OZARPlaneInfo setClassification:](v4, "setClassification:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"classification"]);
    -[OZARPlaneInfo setExtent:](v4, "setExtent:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"extent"]);
    -[OZARPlaneInfo setCenter:](v4, "setCenter:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"center"]);
    -[OZARPlaneInfo setTransform:](v4, "setTransform:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"transform"]);
    -[OZARPlaneInfo setIdentifier:](v4, "setIdentifier:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"]);
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:-[OZARPlaneInfo alignment](self forKey:{"alignment"), @"alignment"}];
  [a3 encodeObject:-[OZARPlaneInfo classification](self forKey:{"classification"), @"classification"}];
  [a3 encodeObject:-[OZARPlaneInfo extent](self forKey:{"extent"), @"extent"}];
  [a3 encodeObject:-[OZARPlaneInfo center](self forKey:{"center"), @"center"}];
  [a3 encodeObject:-[OZARPlaneInfo transform](self forKey:{"transform"), @"transform"}];
  v5 = [(OZARPlaneInfo *)self identifier];

  [a3 encodeObject:v5 forKey:@"identifier"];
}

@end