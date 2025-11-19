@interface SKGDomainEdges
+ (id)labels;
- (SKGDomainEdges)initWithDomainNode:(id)a3 inGraph:(id)a4;
@end

@implementation SKGDomainEdges

+ (id)labels
{
  v8[1] = *MEMORY[0x277D85DE8];
  p_name = &OBJC_PROTOCOL___SKDEventInfo.name;
  {
    v6 = MEMORY[0x277CBEB98];
    v8[0] = SKGContentDomainIdentifier;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    +[SKGDomainEdges labels]::sDomainEdgeLabels = [v6 setWithArray:v7];

    p_name = (&OBJC_PROTOCOL___SKDEventInfo + 8);
  }

  v3 = p_name[467];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (SKGDomainEdges)initWithDomainNode:(id)a3 inGraph:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x277CBEB98] setWithObject:a3];
  v8 = [v6 graph];
  v11.receiver = self;
  v11.super_class = SKGDomainEdges;
  v9 = [(MAElementCollection *)&v11 initWithSet:v7 graph:v8];

  return v9;
}

@end