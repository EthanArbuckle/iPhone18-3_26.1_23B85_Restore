@interface RemoteUIModernTableViewCell
- (BOOL)forceFullSizeDetailLabel;
- (CGSize)imageSize;
- (RemoteUIModernTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setBadgeImage:(id)image tintColor:(id)color isCircular:(BOOL)circular;
- (void)setDetailLinkText:(id)text handler:(id)handler;
- (void)setForceFullSizeDetailLabel:(BOOL)label;
- (void)setHTMLData:(id)data sourceURL:(id)l delegate:(id)delegate;
- (void)setImage:(id)image padding:(UIEdgeInsets)padding tintColor:(id)color;
- (void)setImageSize:(CGSize)size;
- (void)setWebContainerView:(id)view;
- (void)tintColorDidChange;
@end

@implementation RemoteUIModernTableViewCell

- (CGSize)imageSize
{
  v4.receiver = self;
  v4.super_class = RemoteUIModernTableViewCell;
  [(RemoteUITableViewCell *)&v4 imageSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7.receiver = self;
  v7.super_class = RemoteUIModernTableViewCell;
  selfCopy = self;
  [(RemoteUITableViewCell *)&v7 setImageSize:width, height];
  v6[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FAE8);
  v6[4] = sub_21B9B35B8(&qword_27CD9FAF0, &qword_27CD9FAE8);
  __swift_allocate_boxed_opaque_existential_1(v6);
  sub_21BA762C8();
  sub_21BA8721C();
  MEMORY[0x21CEFD580](v6);
}

- (void)setWebContainerView:(id)view
{
  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR___RemoteUIModernTableViewCell__webContainerView);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___RemoteUIModernTableViewCell__webContainerView) = view;
  viewCopy = view;
  selfCopy = self;

  v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FAE8);
  v7[4] = sub_21B9B35B8(&qword_27CD9FAF0, &qword_27CD9FAE8);
  __swift_allocate_boxed_opaque_existential_1(v7);
  sub_21BA762C8();
  sub_21BA8721C();
  MEMORY[0x21CEFD580](v7);
}

- (RemoteUIModernTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = sub_21BA87CBC();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return RemoteUIModernTableViewCell.init(style:reuseIdentifier:)(style, identifier, v6);
}

- (void)setDetailLinkText:(id)text handler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = v6;
  if (text)
  {
    v8 = sub_21BA87CBC();
    text = v9;
    if (v7)
    {
LABEL_3:
      v10 = swift_allocObject();
      *(v10 + 16) = v7;
      v7 = sub_21BA76BC0;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  selfCopy = self;
  RemoteUIModernTableViewCell.setDetailLinkText(_:handler:)(v8, text, v7, v10);
  sub_21B946D98(v7);
}

- (BOOL)forceFullSizeDetailLabel
{
  v3.receiver = self;
  v3.super_class = RemoteUIModernTableViewCell;
  return [(RemoteUITableViewCell *)&v3 forceFullSizeDetailLabel];
}

- (void)setForceFullSizeDetailLabel:(BOOL)label
{
  labelCopy = label;
  v6.receiver = self;
  v6.super_class = RemoteUIModernTableViewCell;
  selfCopy = self;
  [(RemoteUITableViewCell *)&v6 setForceFullSizeDetailLabel:labelCopy];
  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FAE8);
  v5[4] = sub_21B9B35B8(&qword_27CD9FAF0, &qword_27CD9FAE8);
  __swift_allocate_boxed_opaque_existential_1(v5);
  sub_21BA762C8();
  sub_21BA8721C();
  MEMORY[0x21CEFD580](v5);
}

- (void)tintColorDidChange
{
  selfCopy = self;
  RemoteUIModernTableViewCell.tintColorDidChange()();
}

- (void)setHTMLData:(id)data sourceURL:(id)l delegate:(id)delegate
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  if (!data)
  {
    lCopy = l;
    swift_unknownObjectRetain();
    selfCopy = self;
    v16 = 0xF000000000000000;
    if (l)
    {
      goto LABEL_3;
    }

LABEL_5:
    v20 = sub_21BA864AC();
    (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
    goto LABEL_6;
  }

  lCopy2 = l;
  swift_unknownObjectRetain();
  selfCopy2 = self;
  dataCopy = data;
  data = sub_21BA864DC();
  v16 = v15;

  if (!l)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_21BA8643C();

  v17 = sub_21BA864AC();
  (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
LABEL_6:
  RemoteUIModernTableViewCell.setHTMLData(_:sourceURL:delegate:)(data, v16, v11, delegate);
  sub_21B9B91AC(data, v16);
  swift_unknownObjectRelease();

  sub_21B9ABAAC(v11, &qword_27CD9DBA0);
}

- (void)setImage:(id)image padding:(UIEdgeInsets)padding tintColor:(id)color
{
  imageCopy = image;
  colorCopy = color;
  selfCopy = self;
  imageView = [(RemoteUIModernTableViewCell *)selfCopy imageView];
  [(UIImageView *)imageView setImage:imageCopy];

  imageView2 = [(RemoteUIModernTableViewCell *)selfCopy imageView];
  [(UIImageView *)imageView2 setTintColor:colorCopy];
}

- (void)setBadgeImage:(id)image tintColor:(id)color isCircular:(BOOL)circular
{
  circularCopy = circular;
  imageCopy = image;
  colorCopy = color;
  selfCopy = self;
  v16.is_nil = selfCopy;
  v13 = selfCopy;
  v15.value.super.isa = image;
  v15.is_nil = color;
  v16.value.super.isa = circularCopy;
  RemoteUIModernTableViewCell.setBadgeImage(_:tintColor:isCircular:)(v15, v16, v12);
}

@end