@interface SKGPhotos
+ (id)labels;
+ (id)photoWithPhotoIdentifier:(id)a3 inGraph:(id)a4;
- (SKGPhotos)initWithPhotoNode:(id)a3 inGraph:(id)a4;
- (void)enumeratePhotosInGraph:(id)a3 usingBlock:(id)a4;
@end

@implementation SKGPhotos

+ (id)labels
{
  v8[1] = *MEMORY[0x277D85DE8];
  p_name = &OBJC_PROTOCOL___SKDEventInfo.name;
  {
    v6 = MEMORY[0x277CBEB98];
    v8[0] = SKGPeoplePhotoPersonIdentifier;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    +[SKGPhotos labels]::sPhotoPersonLabels = [v6 setWithArray:v7];

    p_name = (&OBJC_PROTOCOL___SKDEventInfo + 8);
  }

  v3 = p_name[421];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)photoWithPhotoIdentifier:(id)a3 inGraph:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[SKGPhotoNode alloc] initWithIdentifier:v5];
  v8 = [[SKGPhotos alloc] initWithPhotoNode:v7 inGraph:v6];

  return v8;
}

- (SKGPhotos)initWithPhotoNode:(id)a3 inGraph:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 graph];
  v9 = [v7 graph];
  v10 = [v6 filter];
  v11 = [v9 nodeIdentifiersMatchingFilter:v10];
  v14.receiver = self;
  v14.super_class = SKGPhotos;
  v12 = [(MAElementCollection *)&v14 initWithGraph:v8 elementIdentifiers:v11];

  return v12;
}

- (void)enumeratePhotosInGraph:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__SKGPhotos_enumeratePhotosInGraph_usingBlock___block_invoke;
  v11[3] = &unk_27893DB98;
  v9 = v6;
  v12 = v9;
  v10 = v7;
  v13 = v10;
  [(MANodeCollection *)self enumerateNodesUsingBlock:v11];

  objc_autoreleasePoolPop(v8);
}

void __47__SKGPhotos_enumeratePhotosInGraph_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [[SKGPhotos alloc] initWithPhotoNode:v4 inGraph:*(a1 + 32)];
  -[SKGNodes setNodeIdentifier:](v3, "setNodeIdentifier:", [v4 identifier]);
  (*(*(a1 + 40) + 16))();
}

@end