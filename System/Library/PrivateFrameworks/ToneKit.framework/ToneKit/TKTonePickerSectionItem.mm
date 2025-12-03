@interface TKTonePickerSectionItem
- (BOOL)isEqual:(id)equal;
- (TKTonePickerController)_parentTonePickerController;
- (id)childItemAtIndex:(int64_t)index;
- (unint64_t)hash;
- (void)_appendDescriptionOfAttributesToString:(id)string;
@end

@implementation TKTonePickerSectionItem

- (id)childItemAtIndex:(int64_t)index
{
  _parentTonePickerController = [(TKTonePickerSectionItem *)self _parentTonePickerController];
  v6 = [_parentTonePickerController _pickerRowItemAtIndex:index inSectionForItem:self];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  mEMORY[0x277D71F68] = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  supportsReflectionRemixes = [mEMORY[0x277D71F68] supportsReflectionRemixes];

  if (supportsReflectionRemixes)
  {
    if (self == equalCopy)
    {
      v10 = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = equalCopy;
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
    v10 = [(TKPickerSectionItem *)&v13 isEqual:equalCopy];
  }

  return v10;
}

- (unint64_t)hash
{
  mEMORY[0x277D71F68] = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
  supportsReflectionRemixes = [mEMORY[0x277D71F68] supportsReflectionRemixes];

  if (supportsReflectionRemixes)
  {
    v9.receiver = self;
    v9.super_class = TKTonePickerSectionItem;
    v5 = [(TKPickerSectionItem *)&v9 hash];
    _parentTonePickerController = [(TKTonePickerSectionItem *)self _parentTonePickerController];
    v7 = [_parentTonePickerController hash] ^ v5;

    return v7 ^ self->_numberOfChildren ^ self->_sectionHeader ^ self->_regularToneSectionIndex;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TKTonePickerSectionItem;
    return [(TKPickerSectionItem *)&v10 hash];
  }
}

- (void)_appendDescriptionOfAttributesToString:(id)string
{
  v7.receiver = self;
  v7.super_class = TKTonePickerSectionItem;
  stringCopy = string;
  [(TKPickerSectionItem *)&v7 _appendDescriptionOfAttributesToString:stringCopy];
  v5 = [(TKTonePickerSectionItem *)self sectionHeader:v7.receiver];
  if (v5 > 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_278316A10[v5];
  }

  [(TKPickerItem *)self _appendDescriptionOfAttributeNamed:@"sectionHeader" withStringValue:v6 toString:stringCopy];
  [(TKPickerItem *)self _appendDescriptionOfAttributeNamed:@"regularToneSectionIndex" withIntegerValue:[(TKTonePickerSectionItem *)self regularToneSectionIndex] toString:stringCopy];
}

- (TKTonePickerController)_parentTonePickerController
{
  WeakRetained = objc_loadWeakRetained(&self->__parentTonePickerController);

  return WeakRetained;
}

@end