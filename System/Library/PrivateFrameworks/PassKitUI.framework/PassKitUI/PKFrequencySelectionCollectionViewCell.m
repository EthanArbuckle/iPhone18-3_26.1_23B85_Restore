@interface PKFrequencySelectionCollectionViewCell
- (_TtC9PassKitUI38PKFrequencySelectionCollectionViewCell)initWithCoder:(id)a3;
- (_TtC9PassKitUI38PKFrequencySelectionCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)configureWithOptions:(id)a3 selectedFrequency:(unint64_t)a4 selectedDate:(id)a5 isEditable:(BOOL)a6 titleColor:(id)a7 changeHandler:(id)a8;
@end

@implementation PKFrequencySelectionCollectionViewCell

- (void)configureWithOptions:(id)a3 selectedFrequency:(unint64_t)a4 selectedDate:(id)a5 isEditable:(BOOL)a6 titleColor:(id)a7 changeHandler:(id)a8
{
  v36 = a7;
  v35 = a6;
  v34 = a4;
  v32 = self;
  v9 = sub_1BE04AF64();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v13 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v31 - v16;
  v18 = _Block_copy(a8);
  v31 = sub_1BE052744();
  v33 = v17;
  sub_1BE04AEE4();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v10 + 16))(v13, v17, v9);
  v21 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v22 = v21 + v11;
  v23 = swift_allocObject();
  v24 = v31;
  *(v23 + 2) = v20;
  *(v23 + 3) = v24;
  *(v23 + 4) = v34;
  v25 = v13;
  v26 = v9;
  (*(v10 + 32))(&v23[v21], v25, v9);
  v23[v22] = v35;
  v27 = v36;
  *&v23[(v22 & 0xFFFFFFFFFFFFFFF8) + 8] = v36;
  v28 = &v23[((v22 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8];
  *v28 = sub_1BD7CE270;
  v28[1] = v19;
  v29 = v27;
  v30 = v32;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE052E74();

  [(PKFrequencySelectionCollectionViewCell *)v30 setNeedsUpdateConfiguration];

  (*(v10 + 8))(v33, v26);
}

- (_TtC9PassKitUI38PKFrequencySelectionCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PKFrequencySelectionCollectionViewCell();
  return [(PKFrequencySelectionCollectionViewCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC9PassKitUI38PKFrequencySelectionCollectionViewCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PKFrequencySelectionCollectionViewCell();
  v4 = a3;
  v5 = [(PKFrequencySelectionCollectionViewCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end