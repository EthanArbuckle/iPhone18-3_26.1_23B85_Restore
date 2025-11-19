@interface SKGReferenceEdges
+ (id)labels;
@end

@implementation SKGReferenceEdges

+ (id)labels
{
  v8[1] = *MEMORY[0x277D85DE8];
  p_name = &OBJC_PROTOCOL___SKDEventInfo.name;
  {
    v6 = MEMORY[0x277CBEB98];
    v8[0] = SKGContentReferenceIdentifier;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    +[SKGReferenceEdges labels]::sReferenceEdgeLabels = [v6 setWithArray:v7];

    p_name = (&OBJC_PROTOCOL___SKDEventInfo + 8);
  }

  v3 = p_name[463];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end