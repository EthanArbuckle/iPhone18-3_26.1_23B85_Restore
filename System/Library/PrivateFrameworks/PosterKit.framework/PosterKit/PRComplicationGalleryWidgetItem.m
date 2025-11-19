@interface PRComplicationGalleryWidgetItem
- (BOOL)isEqual:(id)a3;
- (PRComplicationGalleryWidgetItem)initWithDisplayName:(id)a3 selected:(BOOL)a4 iconImageHidden:(BOOL)a5 descriptor:(id)a6;
- (PRComplicationGalleryWidgetItem)initWithDisplayName:(id)a3 selected:(BOOL)a4 iconImageHidden:(BOOL)a5 text:(id)a6 kind:(int64_t)a7;
- (unint64_t)hash;
@end

@implementation PRComplicationGalleryWidgetItem

- (PRComplicationGalleryWidgetItem)initWithDisplayName:(id)a3 selected:(BOOL)a4 iconImageHidden:(BOOL)a5 descriptor:(id)a6
{
  v10 = a3;
  v11 = a6;
  v16.receiver = self;
  v16.super_class = PRComplicationGalleryWidgetItem;
  v12 = [(PRComplicationGalleryWidgetItem *)&v16 init];
  if (v12)
  {
    v13 = [v10 copy];
    displayName = v12->_displayName;
    v12->_displayName = v13;

    v12->_selected = a4;
    v12->_iconImageHidden = a5;
    objc_storeStrong(&v12->_descriptor, a6);
    v12->_kind = 0;
  }

  return v12;
}

- (PRComplicationGalleryWidgetItem)initWithDisplayName:(id)a3 selected:(BOOL)a4 iconImageHidden:(BOOL)a5 text:(id)a6 kind:(int64_t)a7
{
  v12 = a3;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = PRComplicationGalleryWidgetItem;
  v14 = [(PRComplicationGalleryWidgetItem *)&v20 init];
  if (v14)
  {
    v15 = [v12 copy];
    displayName = v14->_displayName;
    v14->_displayName = v15;

    v14->_selected = a4;
    v14->_iconImageHidden = a5;
    v17 = [v13 copy];
    text = v14->_text;
    v14->_text = v17;

    v14->_kind = a7;
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:self ofExpectedClass:objc_opt_class()];
  displayName = self->_displayName;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __43__PRComplicationGalleryWidgetItem_isEqual___block_invoke;
  v38[3] = &unk_1E7843888;
  v7 = v4;
  v39 = v7;
  v8 = [v5 appendString:displayName counterpart:v38];
  selected = self->_selected;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __43__PRComplicationGalleryWidgetItem_isEqual___block_invoke_2;
  v36[3] = &unk_1E78438B0;
  v10 = v7;
  v37 = v10;
  v11 = [v5 appendBool:selected counterpart:v36];
  iconImageHidden = self->_iconImageHidden;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __43__PRComplicationGalleryWidgetItem_isEqual___block_invoke_3;
  v34[3] = &unk_1E78438B0;
  v13 = v10;
  v35 = v13;
  v14 = [v5 appendBool:iconImageHidden counterpart:v34];
  descriptor = self->_descriptor;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __43__PRComplicationGalleryWidgetItem_isEqual___block_invoke_4;
  v32[3] = &unk_1E78438D8;
  v16 = v13;
  v33 = v16;
  v17 = [v5 appendObject:descriptor counterpart:v32];
  text = self->_text;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __43__PRComplicationGalleryWidgetItem_isEqual___block_invoke_5;
  v30[3] = &unk_1E7843888;
  v19 = v16;
  v31 = v19;
  v20 = [v5 appendString:text counterpart:v30];
  kind = self->_kind;
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __43__PRComplicationGalleryWidgetItem_isEqual___block_invoke_6;
  v28 = &unk_1E7843900;
  v29 = v19;
  v22 = v19;
  v23 = [v5 appendInteger:kind counterpart:&v25];
  LOBYTE(v19) = [v5 isEqual];

  return v19;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendString:self->_displayName];
  v5 = [v3 appendBool:self->_selected];
  v6 = [v3 appendBool:self->_iconImageHidden];
  v7 = [v3 appendObject:self->_descriptor];
  v8 = [v3 appendString:self->_text];
  v9 = [v3 appendInteger:self->_kind];
  v10 = [v3 hash];

  return v10;
}

@end