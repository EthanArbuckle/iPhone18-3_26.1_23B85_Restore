@interface PKFrequencySelectionCollectionViewCell
- (_TtC9PassKitUI38PKFrequencySelectionCollectionViewCell)initWithCoder:(id)coder;
- (_TtC9PassKitUI38PKFrequencySelectionCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)configureWithOptions:(id)options selectedFrequency:(unint64_t)frequency selectedDate:(id)date isEditable:(BOOL)editable titleColor:(id)color changeHandler:(id)handler;
@end

@implementation PKFrequencySelectionCollectionViewCell

- (void)configureWithOptions:(id)options selectedFrequency:(unint64_t)frequency selectedDate:(id)date isEditable:(BOOL)editable titleColor:(id)color changeHandler:(id)handler
{
  colorCopy = color;
  editableCopy = editable;
  frequencyCopy = frequency;
  selfCopy = self;
  v9 = sub_1BE04AF64();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v13 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v31 - v16;
  v18 = _Block_copy(handler);
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
  *(v23 + 4) = frequencyCopy;
  v25 = v13;
  v26 = v9;
  (*(v10 + 32))(&v23[v21], v25, v9);
  v23[v22] = editableCopy;
  v27 = colorCopy;
  *&v23[(v22 & 0xFFFFFFFFFFFFFFF8) + 8] = colorCopy;
  v28 = &v23[((v22 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8];
  *v28 = sub_1BD7CE270;
  v28[1] = v19;
  v29 = v27;
  v30 = selfCopy;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE052E74();

  [(PKFrequencySelectionCollectionViewCell *)v30 setNeedsUpdateConfiguration];

  (*(v10 + 8))(v33, v26);
}

- (_TtC9PassKitUI38PKFrequencySelectionCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PKFrequencySelectionCollectionViewCell();
  return [(PKFrequencySelectionCollectionViewCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC9PassKitUI38PKFrequencySelectionCollectionViewCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PKFrequencySelectionCollectionViewCell();
  coderCopy = coder;
  v5 = [(PKFrequencySelectionCollectionViewCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end