@interface AssetManager
- (id)absoluteURLForAssetPath:(id)a3;
@end

@implementation AssetManager

- (id)absoluteURLForAssetPath:(id)a3
{
  sub_1AF0D0EA0(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v18[-v6];
  v8 = sub_1AFDFCEF8();
  v10 = v9;
  v11 = self;
  v18[12] = 1;
  sub_1AF8AF2FC(v8, v10, 0x100000000, v7);

  v12 = sub_1AFDFC128();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v7, 1, v12);
  v15 = 0;
  if (v14 != 1)
  {
    v16 = sub_1AFDFC048();
    (*(v13 + 8))(v7, v12);
    v15 = v16;
  }

  return v15;
}

@end