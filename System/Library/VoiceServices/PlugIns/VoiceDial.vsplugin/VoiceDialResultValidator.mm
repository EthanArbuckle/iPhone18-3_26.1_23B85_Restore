@interface VoiceDialResultValidator
- (id)_nameSource;
- (id)validRecognitionResultFromRecognitionResult:(id)result;
- (id)validRecognitionResultFromRecognitionResult:(id)result knownDisambiguationValues:(id)values;
- (void)_addressBook;
- (void)dealloc;
@end

@implementation VoiceDialResultValidator

- (void)dealloc
{
  addressBook = self->_addressBook;
  if (addressBook)
  {
    CFRelease(addressBook);
  }

  v4.receiver = self;
  v4.super_class = VoiceDialResultValidator;
  [(VoiceDialResultValidator *)&v4 dealloc];
}

- (void)_addressBook
{
  result = self->_addressBook;
  if (!result)
  {
    error = 0;
    v4 = ABAddressBookCreateWithOptions(0, &error);
    self->_addressBook = v4;
    if (!v4)
    {
      v5 = PHDefaultLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [(VoiceDialResultHandler *)&error _addressBook];
      }
    }

    if (error)
    {
      CFRelease(error);
    }

    return self->_addressBook;
  }

  return result;
}

- (id)_nameSource
{
  nameSource = self->_nameSource;
  if (!nameSource)
  {
    v4 = VSPreferencesCopySpokenLanguageIdentifier();
    v5 = [VoiceDialNameDataSource nameDataSourceForLanguageIdentifier:v4];
    v6 = self->_nameSource;
    self->_nameSource = v5;

    nameSource = self->_nameSource;
  }

  return nameSource;
}

- (id)validRecognitionResultFromRecognitionResult:(id)result
{
  resultCopy = result;
  v19 = 0;
  VoiceDialConfigureSpokenLocalizedLabel(1);
  v17 = 0;
  v18 = 0;
  v16 = 0;
  VoiceDialCopyNameLabelAndTypeFromRecognitionResult(resultCopy, &v18, &v17, &v16, 0);
  v5 = v18;
  v6 = v17;
  v7 = v16;
  v8 = [resultCopy valueOfFirstElementWithClassIdentifier:@"command"];
  if (v8)
  {
    v9 = @"labeltype-phone";

    v7 = v9;
  }

  if (v6)
  {
    if (v5)
    {
      _addressBook = [(VoiceDialResultValidator *)self _addressBook];
      if (_addressBook)
      {
        v11 = _addressBook;
        _nameSource = [(VoiceDialResultValidator *)self _nameSource];
        VoiceDialSendNameAndExtendedLabelMatches(v11, _nameSource, 0, 1, v5, v6, v7, _ResultValidationAddressBookCallback, &v19);

        if ((v19 & 1) == 0)
        {
          v13 = [resultCopy recognitionResultByReplacingValueForClassIdentifier:@"label" withValue:0];

          v14 = [v13 recognitionResultByReplacingValueForClassIdentifier:@"labeltype-phone" withValue:0];

          resultCopy = [v14 recognitionResultByReplacingValueForClassIdentifier:@"labeltype-email" withValue:0];
        }
      }
    }
  }

  return resultCopy;
}

- (id)validRecognitionResultFromRecognitionResult:(id)result knownDisambiguationValues:(id)values
{
  resultCopy = result;
  location = resultCopy;
  valuesCopy = values;
  v8 = objc_alloc_init(VoiceDialDisambiguationAddressBookContext);
  v40 = v8;
  VoiceDialConfigureSpokenLocalizedLabel(1);
  if (!valuesCopy)
  {
    goto LABEL_28;
  }

  v9 = [valuesCopy objectForKey:@"firstname"];
  if (v9)
  {
    v10 = v9;
    v11 = *MEMORY[0x29EDBE1E8];
  }

  else
  {
    v10 = [valuesCopy objectForKey:@"lastname"];
    if (v10)
    {
      v11 = *MEMORY[0x29EDBE210];
    }

    else
    {
      v11 = 0xFFFFFFFFLL;
    }
  }

  v12 = [v10 count];
  if (!v12)
  {

LABEL_28:
    v33 = [(VoiceDialResultValidator *)self validRecognitionResultFromRecognitionResult:resultCopy];
    location = v33;

    v15 = 0;
    v17 = 0;
    v16 = 0;
    goto LABEL_31;
  }

  v13 = v12;
  v36 = valuesCopy;
  _addressBook = [(VoiceDialResultValidator *)self _addressBook];
  v38 = 0;
  v39 = 0;
  v37 = 0;
  VoiceDialCopyNameLabelAndTypeFromRecognitionResult(resultCopy, &v39, &v38, &v37, 0);
  v15 = v39;
  v16 = v38;
  v17 = v37;
  if (_addressBook)
  {
    [(VoiceDialDisambiguationAddressBookContext *)v8 setPreviousNameProperty:v11];
    [(VoiceDialDisambiguationAddressBookContext *)v8 setMatchedName:v15];
    [(VoiceDialDisambiguationAddressBookContext *)v8 setResult:&location];
    [(VoiceDialDisambiguationAddressBookContext *)v8 setResultFound:0];
    _nameSource = [(VoiceDialResultValidator *)self _nameSource];
    if (![(VoiceDialDisambiguationAddressBookContext *)v8 resultFound])
    {
      v19 = 1;
      do
      {
        v20 = [v10 objectAtIndex:v19 - 1];
        [(VoiceDialDisambiguationAddressBookContext *)v40 setPreviousName:v20];

        [(VoiceDialDisambiguationAddressBookContext *)v40 setResultFound:0];
        VoiceDialSendNameAndExtendedLabelMatches(_addressBook, _nameSource, 1, 1, v15, v16, v17, _ResultDisambiguationAddressBookCallback, v40);
        if (![(VoiceDialDisambiguationAddressBookContext *)v40 resultFound]&& v17)
        {
          v21 = location;
          v22 = location;
          v23 = [v22 recognitionResultByReplacingValueForClassIdentifier:@"labeltype-phone" withValue:0];
          v24 = location;
          location = v23;

          v25 = [location recognitionResultByReplacingValueForClassIdentifier:@"labeltype-email" withValue:0];
          v26 = location;
          location = v25;

          VoiceDialSendNameAndExtendedLabelMatches(_addressBook, _nameSource, 1, 1, v15, v16, 0, _ResultDisambiguationAddressBookCallback, v40);
          if (![(VoiceDialDisambiguationAddressBookContext *)v40 resultFound])
          {
            objc_storeStrong(&location, v21);
          }
        }

        if (![(VoiceDialDisambiguationAddressBookContext *)v40 resultFound]&& v16)
        {
          v27 = location;
          v28 = location;
          v29 = [v28 recognitionResultByReplacingValueForClassIdentifier:@"label" withValue:0];
          v30 = location;
          location = v29;

          VoiceDialSendNameAndExtendedLabelMatches(_addressBook, _nameSource, 1, 1, v15, 0, 0, _ResultDisambiguationAddressBookCallback, &v40);
          if (![(VoiceDialDisambiguationAddressBookContext *)v40 resultFound])
          {
            objc_storeStrong(&location, v27);
          }
        }

        if ([(VoiceDialDisambiguationAddressBookContext *)v40 resultFound])
        {
          break;
        }
      }

      while (v19++ < v13);
      v8 = v40;
    }

    if (![(VoiceDialDisambiguationAddressBookContext *)v8 resultFound])
    {
      v32 = location;
      location = 0;
    }
  }

  else
  {
    _nameSource = 0;
  }

  valuesCopy = v36;

  v33 = location;
LABEL_31:
  v34 = v33;

  return v34;
}

@end