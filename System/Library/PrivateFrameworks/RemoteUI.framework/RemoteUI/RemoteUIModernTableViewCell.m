@interface RemoteUIModernTableViewCell
- (BOOL)forceFullSizeDetailLabel;
- (CGSize)imageSize;
- (RemoteUIModernTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)setBadgeImage:(id)a3 tintColor:(id)a4 isCircular:(BOOL)a5;
- (void)setDetailLinkText:(id)a3 handler:(id)a4;
- (void)setForceFullSizeDetailLabel:(BOOL)a3;
- (void)setHTMLData:(id)a3 sourceURL:(id)a4 delegate:(id)a5;
- (void)setImage:(id)a3 padding:(UIEdgeInsets)a4 tintColor:(id)a5;
- (void)setImageSize:(CGSize)a3;
- (void)setWebContainerView:(id)a3;
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

- (void)setImageSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v7.receiver = self;
  v7.super_class = RemoteUIModernTableViewCell;
  v5 = self;
  [(RemoteUITableViewCell *)&v7 setImageSize:width, height];
  v6[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FAE8);
  v6[4] = sub_21B9B35B8(&qword_27CD9FAF0, &qword_27CD9FAE8);
  __swift_allocate_boxed_opaque_existential_1(v6);
  sub_21BA762C8();
  sub_21BA8721C();
  MEMORY[0x21CEFD580](v6);
}

- (void)setWebContainerView:(id)a3
{
  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR___RemoteUIModernTableViewCell__webContainerView);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___RemoteUIModernTableViewCell__webContainerView) = a3;
  v5 = a3;
  v6 = self;

  v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FAE8);
  v7[4] = sub_21B9B35B8(&qword_27CD9FAF0, &qword_27CD9FAE8);
  __swift_allocate_boxed_opaque_existential_1(v7);
  sub_21BA762C8();
  sub_21BA8721C();
  MEMORY[0x21CEFD580](v7);
}

- (RemoteUIModernTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = sub_21BA87CBC();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return RemoteUIModernTableViewCell.init(style:reuseIdentifier:)(a3, a4, v6);
}

- (void)setDetailLinkText:(id)a3 handler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = v6;
  if (a3)
  {
    v8 = sub_21BA87CBC();
    a3 = v9;
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
  v11 = self;
  RemoteUIModernTableViewCell.setDetailLinkText(_:handler:)(v8, a3, v7, v10);
  sub_21B946D98(v7);
}

- (BOOL)forceFullSizeDetailLabel
{
  v3.receiver = self;
  v3.super_class = RemoteUIModernTableViewCell;
  return [(RemoteUITableViewCell *)&v3 forceFullSizeDetailLabel];
}

- (void)setForceFullSizeDetailLabel:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = RemoteUIModernTableViewCell;
  v4 = self;
  [(RemoteUITableViewCell *)&v6 setForceFullSizeDetailLabel:v3];
  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9FAE8);
  v5[4] = sub_21B9B35B8(&qword_27CD9FAF0, &qword_27CD9FAE8);
  __swift_allocate_boxed_opaque_existential_1(v5);
  sub_21BA762C8();
  sub_21BA8721C();
  MEMORY[0x21CEFD580](v5);
}

- (void)tintColorDidChange
{
  v2 = self;
  RemoteUIModernTableViewCell.tintColorDidChange()();
}

- (void)setHTMLData:(id)a3 sourceURL:(id)a4 delegate:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  if (!a3)
  {
    v18 = a4;
    swift_unknownObjectRetain();
    v19 = self;
    v16 = 0xF000000000000000;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v20 = sub_21BA864AC();
    (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
    goto LABEL_6;
  }

  v12 = a4;
  swift_unknownObjectRetain();
  v13 = self;
  v14 = a3;
  a3 = sub_21BA864DC();
  v16 = v15;

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_21BA8643C();

  v17 = sub_21BA864AC();
  (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
LABEL_6:
  RemoteUIModernTableViewCell.setHTMLData(_:sourceURL:delegate:)(a3, v16, v11, a5);
  sub_21B9B91AC(a3, v16);
  swift_unknownObjectRelease();

  sub_21B9ABAAC(v11, &qword_27CD9DBA0);
}

- (void)setImage:(id)a3 padding:(UIEdgeInsets)a4 tintColor:(id)a5
{
  v7 = a3;
  v8 = a5;
  v11 = self;
  v9 = [(RemoteUIModernTableViewCell *)v11 imageView];
  [(UIImageView *)v9 setImage:v7];

  v10 = [(RemoteUIModernTableViewCell *)v11 imageView];
  [(UIImageView *)v10 setTintColor:v8];
}

- (void)setBadgeImage:(id)a3 tintColor:(id)a4 isCircular:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  v11 = self;
  v16.is_nil = v11;
  v13 = v11;
  v15.value.super.isa = a3;
  v15.is_nil = a4;
  v16.value.super.isa = v5;
  RemoteUIModernTableViewCell.setBadgeImage(_:tintColor:isCircular:)(v15, v16, v12);
}

@end