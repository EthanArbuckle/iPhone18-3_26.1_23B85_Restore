@interface TKTonePickerSectionItem
- (BOOL)isEqual:(id)a3;
- (TKTonePickerController)_parentTonePickerController;
- (id)childItemAtIndex:(int64_t)a3;
- (unint64_t)hash;
- (void)_appendDescriptionOfAttributesToString:(id)a3;
@end

@implementation TKTonePickerSectionItem

- (id)childItemAtIndex:(int64_t)a3
{
  v5 = [(TKTonePickerSectionItem *)self _parentTonePickerController];
  v6 = [v5 _pickerRowItemAtIndex:a3 inSectionForItem:self];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  v6 = [v5 supportsReflectionRemixes];

  if (v6)
  {
    if (self == v4)
    {
      v10 = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v4;
        v12.receiver = self;
        v10 = [(TKPickerSectionItem *)&v12 isEqual:v7]&& ([(TKTonePickerSectionItem *)self _parentTonePickerController], v8 = v12.super_class = TKTonePickerSectionItem;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = TKTonePickerSectionItem;
    v10 = [(TKPickerSectionItem *)&v13 isEqual:v4];
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  v4 = [v3 supportsReflectionRemixes];

  if (v4)
  {
    v9.receiver = self;
    v9.super_class = TKTonePickerSectionItem;
    v5 = [(TKPickerSectionItem *)&v9 hash];
    v6 = [(TKTonePickerSectionItem *)self _parentTonePickerController];
    v7 = [v6 hash] ^ v5;

    return v7 ^ self->_numberOfChildren ^ self->_sectionHeader ^ self->_regularToneSectionIndex;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TKTonePickerSectionItem;
    return [(TKPickerSectionItem *)&v10 hash];
  }
}

- (void)_appendDescriptionOfAttributesToString:(id)a3
{
  v7.receiver = self;
  v7.super_class = TKTonePickerSectionItem;
  v4 = a3;
  [(TKPickerSectionItem *)&v7 _appendDescriptionOfAttributesToString:v4];
  v5 = [(TKTonePickerSectionItem *)self sectionHeader:v7.receiver];
  if (v5 > 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_278316A10[v5];
  }

  [(TKPickerItem *)self _appendDescriptionOfAttributeNamed:@"sectionHeader" withStringValue:v6 toString:v4];
  [(TKPickerItem *)self _appendDescriptionOfAttributeNamed:@"regularToneSectionIndex" withIntegerValue:[(TKTonePickerSectionItem *)self regularToneSectionIndex] toString:v4];
}

- (TKTonePickerController)_parentTonePickerController
{
  WeakRetained = objc_loadWeakRetained(&self->__parentTonePickerController);

  return WeakRetained;
}

@end