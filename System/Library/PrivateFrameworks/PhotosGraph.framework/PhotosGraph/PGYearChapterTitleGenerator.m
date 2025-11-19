@interface PGYearChapterTitleGenerator
- (PGYearChapterTitleGenerator)initWithTriggeredMemory:(id)a3;
- (id)generateChapterTitles;
- (id)momentNodesByChapterYearNodeWithMomentNodes:(id)a3;
@end

@implementation PGYearChapterTitleGenerator

- (id)generateChapterTitles
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__33021;
  v11 = __Block_byref_object_dispose__33022;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  momentNodesByChapterYearNode = self->_momentNodesByChapterYearNode;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__PGYearChapterTitleGenerator_generateChapterTitles__block_invoke;
  v6[3] = &unk_2788833B0;
  v6[4] = &v7;
  [(MABinaryAdjacency *)momentNodesByChapterYearNode enumerateTargetsBySourceWithBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __52__PGYearChapterTitleGenerator_generateChapterTitles__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v17 = a3;
  v7 = a2;
  v8 = objc_alloc_init(PGTimeTitleOptions);
  [(PGTimeTitleOptions *)v8 setAllowedFormats:4];
  v9 = [v17 set];
  [(PGTimeTitleOptions *)v8 setMomentNodes:v9];

  [(PGTimeTitleOptions *)v8 setFeaturedYearNodes:v7];
  v10 = [PGTimeTitleUtility timeTitleWithOptions:v8];
  if (v10)
  {
    v11 = [PGChapterTitle alloc];
    v12 = [v17 localDateInterval];
    v13 = [(PGChapterTitle *)v11 initWithLocalizedTitleString:v10 chapterDateInterval:v12];

    [*(*(*(a1 + 32) + 8) + 40) addObject:v13];
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = *(*(a1 + 32) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    *a4 = 1;
  }
}

- (id)momentNodesByChapterYearNodeWithMomentNodes:(id)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[PGGraphMomentNode dateOfMoment];
  v5 = +[PGGraphDateNode yearOfDate];
  v6 = objc_alloc(MEMORY[0x277D22C00]);
  v13[0] = v4;
  v13[1] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v8 = [v6 initWithSteps:v7];

  v9 = [MEMORY[0x277D22BF8] adjacencyWithSources:v3 relation:v8 targetsClass:objc_opt_class()];

  v10 = [v9 transposed];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (PGYearChapterTitleGenerator)initWithTriggeredMemory:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PGYearChapterTitleGenerator;
  v5 = [(PGYearChapterTitleGenerator *)&v10 init];
  if (v5)
  {
    v6 = [v4 memoryMomentNodes];
    v7 = [(PGYearChapterTitleGenerator *)v5 momentNodesByChapterYearNodeWithMomentNodes:v6];
    momentNodesByChapterYearNode = v5->_momentNodesByChapterYearNode;
    v5->_momentNodesByChapterYearNode = v7;
  }

  return v5;
}

@end