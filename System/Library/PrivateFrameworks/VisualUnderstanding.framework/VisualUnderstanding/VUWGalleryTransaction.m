@interface VUWGalleryTransaction
- (BOOL)removeWithAsset:(id)a3 error:(id *)a4;
- (BOOL)tag:(id)a3 with:(id)a4 type:(int64_t)a5 error:(id *)a6;
- (id)addWithObservation:(id)a3 context:(id)a4 priority:(int64_t)a5 at:(id)a6 error:(id *)a7;
@end

@implementation VUWGalleryTransaction

- (id)addWithObservation:(id)a3 context:(id)a4 priority:(int64_t)a5 at:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = self;
  v15 = sub_1D21DD344(v11, a4, a5, a6);

  return v15;
}

- (BOOL)removeWithAsset:(id)a3 error:(id *)a4
{
  v5 = sub_1D225055C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D225054C();
  v9 = self;

  sub_1D224B354(v8);

  (*(v6 + 8))(v8, v5);
  return 1;
}

- (BOOL)tag:(id)a3 with:(id)a4 type:(int64_t)a5 error:(id *)a6
{
  v9 = sub_1D225055C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D225054C();
  v13 = a3;
  v14 = self;
  sub_1D21DD7F4(v13, v12, a5);
  (*(v10 + 8))(v12, v9);

  return 1;
}

@end