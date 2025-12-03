@interface WBSMutableFormControlMetadata
- (void)setActive:(BOOL)active;
- (void)setAddressBookLabel:(id)label;
- (void)setAncestorFrameURLs:(id)ls;
- (void)setAnnotations:(id)annotations;
- (void)setAutoFillButtonType:(int64_t)type;
- (void)setAutoFilledTextField:(BOOL)field;
- (void)setAutocompleteTokens:(id)tokens;
- (void)setClaimsToBeCurrentPasswordViaAutocompleteAttribute:(BOOL)attribute;
- (void)setClaimsToBeNewPasswordViaAutocompleteAttribute:(BOOL)attribute;
- (void)setClaimsToBeUsernameViaAutocompleteAttribute:(BOOL)attribute;
- (void)setClassification:(id)classification;
- (void)setClassificationHints:(id)hints;
- (void)setDisabled:(BOOL)disabled;
- (void)setFieldClass:(id)class;
- (void)setFieldID:(id)d;
- (void)setFieldName:(id)name;
- (void)setLabeledUsernameField:(BOOL)field;
- (void)setLastAutoFillButtonType:(int64_t)type;
- (void)setLooksLikeOneTimeCodeField:(BOOL)field;
- (void)setMaxLength:(unint64_t)length;
- (void)setMinLength:(unint64_t)length;
- (void)setNextControlUniqueID:(id)d;
- (void)setOneTimeCodeIsEligibleForAutomaticLogin:(BOOL)login;
- (void)setOrderedParts:(id)parts;
- (void)setPasswordRules:(id)rules;
- (void)setPlaceholder:(id)placeholder;
- (void)setRadioButtonInfo:(id)info;
- (void)setReadOnly:(BOOL)only;
- (void)setRequiredFormatForDateTimeInput:(id)input;
- (void)setSecureTextField:(BOOL)field;
- (void)setSelectElementInfo:(id)info;
- (void)setSelectionLength:(unint64_t)length;
- (void)setSelectionStart:(unint64_t)start;
- (void)setSize:(unint64_t)size;
- (void)setTagName:(id)name;
- (void)setTextField:(BOOL)field;
- (void)setUniqueID:(id)d;
- (void)setUserEditedTextField:(BOOL)field;
- (void)setValue:(id)value;
- (void)setVerticalWritingMode:(BOOL)mode;
- (void)setVisible:(BOOL)visible;
- (void)setassociatedUsername:(id)username;
@end

@implementation WBSMutableFormControlMetadata

- (void)setVisible:(BOOL)visible
{
  if (visible)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->super._flags.flags = (*&self->super._flags.flags & 0xFFFFFFBF | v3);
}

- (void)setActive:(BOOL)active
{
  if (active)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->super._flags.flags = (*&self->super._flags.flags & 0xFFFFFF7F | v3);
}

- (void)setDisabled:(BOOL)disabled
{
  if (disabled)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->super._flags.flags = (*&self->super._flags.flags & 0xFFFFFEFF | v3);
}

- (void)setReadOnly:(BOOL)only
{
  if (only)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->super._flags.flags = (*&self->super._flags.flags & 0xFFFFFDFF | v3);
}

- (void)setTextField:(BOOL)field
{
  if (field)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->super._flags.flags = (*&self->super._flags.flags & 0xFFFFFBFF | v3);
}

- (void)setSecureTextField:(BOOL)field
{
  if (field)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->super._flags.flags = (*&self->super._flags.flags & 0xFFFFF7FF | v3);
}

- (void)setAutoFilledTextField:(BOOL)field
{
  if (field)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->super._flags.flags = (*&self->super._flags.flags & 0xFFFFEFFF | v3);
}

- (void)setUserEditedTextField:(BOOL)field
{
  if (field)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->super._flags.flags = (*&self->super._flags.flags & 0xFFFFDFFF | v3);
}

- (void)setLabeledUsernameField:(BOOL)field
{
  if (field)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->super._flags.flags = (*&self->super._flags.flags & 0xFFFFBFFF | v3);
}

- (void)setVerticalWritingMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->super._flags.flags = (*&self->super._flags.flags & 0xFFFF7FFF | v3);
}

- (void)setClaimsToBeCurrentPasswordViaAutocompleteAttribute:(BOOL)attribute
{
  if (attribute)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->super._flags.flags = (*&self->super._flags.flags & 0xFFFFFFFD | v3);
}

- (void)setClaimsToBeNewPasswordViaAutocompleteAttribute:(BOOL)attribute
{
  if (attribute)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->super._flags.flags = (*&self->super._flags.flags & 0xFFFFFFFB | v3);
}

- (void)setClaimsToBeUsernameViaAutocompleteAttribute:(BOOL)attribute
{
  if (attribute)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->super._flags.flags = (*&self->super._flags.flags & 0xFFFFFFF7 | v3);
}

- (void)setLooksLikeOneTimeCodeField:(BOOL)field
{
  if (field)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->super._flags.flags = (*&self->super._flags.flags & 0xFFFFFFEF | v3);
}

- (void)setOneTimeCodeIsEligibleForAutomaticLogin:(BOOL)login
{
  if (login)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->super._flags.flags = (*&self->super._flags.flags & 0xFFFFFFDF | v3);
}

- (void)setAddressBookLabel:(id)label
{
  v4 = [label copy];
  addressBookLabel = self->super._addressBookLabel;
  self->super._addressBookLabel = v4;
}

- (void)setassociatedUsername:(id)username
{
  v4 = [username copy];
  associatedUsername = self->super._associatedUsername;
  self->super._associatedUsername = v4;
}

- (void)setFieldClass:(id)class
{
  v4 = [class copy];
  fieldClass = self->super._fieldClass;
  self->super._fieldClass = v4;
}

- (void)setFieldID:(id)d
{
  v4 = [d copy];
  fieldID = self->super._fieldID;
  self->super._fieldID = v4;
}

- (void)setFieldName:(id)name
{
  v4 = [name copy];
  fieldName = self->super._fieldName;
  self->super._fieldName = v4;
}

- (void)setTagName:(id)name
{
  v4 = [name copy];
  tagName = self->super._tagName;
  self->super._tagName = v4;
}

- (void)setUniqueID:(id)d
{
  v4 = [d copy];
  uniqueID = self->super._uniqueID;
  self->super._uniqueID = v4;
}

- (void)setNextControlUniqueID:(id)d
{
  v4 = [d copy];
  nextControlUniqueID = self->super._nextControlUniqueID;
  self->super._nextControlUniqueID = v4;
}

- (void)setPlaceholder:(id)placeholder
{
  v4 = [placeholder copy];
  placeholder = self->super._placeholder;
  self->super._placeholder = v4;
}

- (void)setValue:(id)value
{
  v4 = [value copy];
  value = self->super._value;
  self->super._value = v4;
}

- (void)setPasswordRules:(id)rules
{
  v4 = [rules copy];
  passwordRules = self->super._passwordRules;
  self->super._passwordRules = v4;
}

- (void)setRequiredFormatForDateTimeInput:(id)input
{
  v4 = [input copy];
  requiredFormatForDateTimeInput = self->super._requiredFormatForDateTimeInput;
  self->super._requiredFormatForDateTimeInput = v4;
}

- (void)setClassification:(id)classification
{
  v4 = [classification copy];
  classification = self->super._classification;
  self->super._classification = v4;
}

- (void)setSize:(unint64_t)size
{
  sizeCopy = 0x80000;
  if (size < 0x80000)
  {
    sizeCopy = size;
  }

  self->super._size = sizeCopy;
}

- (void)setMaxLength:(unint64_t)length
{
  lengthCopy = 0x80000;
  if (length < 0x80000)
  {
    lengthCopy = length;
  }

  self->super._maxLength = lengthCopy;
}

- (void)setMinLength:(unint64_t)length
{
  lengthCopy = 0x80000;
  if (length < 0x80000)
  {
    lengthCopy = length;
  }

  self->super._minLength = lengthCopy;
}

- (void)setSelectionStart:(unint64_t)start
{
  startCopy = 0x80000;
  if (start < 0x80000)
  {
    startCopy = start;
  }

  self->super._selectionStart = startCopy;
}

- (void)setSelectionLength:(unint64_t)length
{
  lengthCopy = 0x80000;
  if (length < 0x80000)
  {
    lengthCopy = length;
  }

  self->super._selectionLength = lengthCopy;
}

- (void)setAutoFillButtonType:(int64_t)type
{
  v3 = type & ~(type >> 63);
  if (v3 >= 0x7FFFFFFF)
  {
    LODWORD(v3) = 0x7FFFFFFF;
  }

  self->super._autoFillButtonType = v3;
}

- (void)setLastAutoFillButtonType:(int64_t)type
{
  v3 = type & ~(type >> 63);
  if (v3 >= 0x7FFFFFFF)
  {
    LODWORD(v3) = 0x7FFFFFFF;
  }

  self->super._lastAutoFillButtonType = v3;
}

- (void)setAnnotations:(id)annotations
{
  v4 = [annotations copy];
  annotations = self->super._annotations;
  self->super._annotations = v4;
}

- (void)setRadioButtonInfo:(id)info
{
  v4 = [info copy];
  radioButtonInfo = self->super._radioButtonInfo;
  self->super._radioButtonInfo = v4;
}

- (void)setAutocompleteTokens:(id)tokens
{
  v4 = [tokens copy];
  autocompleteTokens = self->super._autocompleteTokens;
  self->super._autocompleteTokens = v4;
}

- (void)setSelectElementInfo:(id)info
{
  v4 = [info copy];
  selectElementInfo = self->super._selectElementInfo;
  self->super._selectElementInfo = v4;
}

- (void)setAncestorFrameURLs:(id)ls
{
  v4 = [ls copy];
  ancestorFrameURLs = self->super._ancestorFrameURLs;
  self->super._ancestorFrameURLs = v4;
}

- (void)setClassificationHints:(id)hints
{
  v4 = [hints copy];
  classificationHints = self->super._classificationHints;
  self->super._classificationHints = v4;
}

- (void)setOrderedParts:(id)parts
{
  v4 = [parts copy];
  orderedParts = self->super._orderedParts;
  self->super._orderedParts = v4;
}

@end