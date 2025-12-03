@interface DigitDialResultHandler
- (TUContactsDataProvider)contactsDataProvider;
- (id)actionForRecognitionResult:(id)result;
@end

@implementation DigitDialResultHandler

- (id)actionForRecognitionResult:(id)result
{
  resultCopy = result;
  v5 = VoiceDialCopyErrorActionForResult(resultCopy);
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    localizedName = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v38 = 0;
    v39 = 0;
    DigitDialPhoneNumberFromResult(resultCopy, &v39, &v38);
    v13 = v39;
    v12 = v38;
    v14 = objc_alloc_init(DigitDialResultValidator);
    v15 = [(DigitDialResultValidator *)v14 indexOfValidPhoneNumber:v13];
    v7 = 0;
    v11 = 0;
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = v15;
      v11 = [v13 objectAtIndex:v15];
      v7 = [v12 objectAtIndex:v16];
    }

    if ([v11 length])
    {
      v36 = v14;
      v37 = v12;
      v17 = TUNetworkCountryCode();
      v8 = TUFormattedPhoneNumber();

      v18 = objc_alloc(MEMORY[0x29EDC6F90]);
      v19 = [MEMORY[0x29EDC6FA0] handleWithDestinationID:v8];
      v20 = [v18 initWithHandle:v19];

      contactsDataProvider = [(DigitDialResultHandler *)self contactsDataProvider];
      v35 = v20;
      v22 = [contactsDataProvider executeFetchRequest:v20];

      localizedName = [v22 localizedName];
      contactLabel = [v22 contactLabel];

      v24 = 0x29EDBA000uLL;
      v34 = v22;
      if (contactLabel)
      {
        v25 = MEMORY[0x29EDBA0F8];
        v26 = VoiceDialBundle();
        v27 = [v26 localizedStringForKey:@"CONFIRMED_DISPLAY_NAME_LABEL_FORMAT_CALLING_%@" value:&stru_2A1D19580 table:@"Feedback"];
        contactLabel2 = [v22 contactLabel];
        v10 = [v25 stringWithFormat:v27, contactLabel2];

        v24 = 0x29EDBA000;
      }

      else
      {
        v26 = VoiceDialBundle();
        v10 = [v26 localizedStringForKey:@"CONFIRMED_DISPLAY_STRING" value:&stru_2A1D19580 table:@"Feedback"];
      }

      v6 = [[VoiceDialRecognitionAction alloc] initWithPhoneNumber:v11 uid:0xFFFFFFFFLL];
      [(VSRecognitionAction *)v6 setResultDisplayString:localizedName];
      v29 = *(v24 + 248);
      v30 = VoiceDialSpokenLocalizedString(@"CONFIRMED_SPOKEN_DIGIT_DIAL_FORMAT");
      v31 = [v29 stringWithFormat:v30, v7];
      [(VSRecognitionAction *)v6 setSpokenFeedbackString:v31];

      [(VSRecognitionAction *)v6 setStatusDisplayString:v10];
      v14 = v36;
      v12 = v37;
    }

    else
    {
      v8 = 0;
      localizedName = 0;
      v10 = 0;
      v6 = 0;
    }
  }

  v32 = v6;

  return v6;
}

- (TUContactsDataProvider)contactsDataProvider
{
  contactsDataProvider = self->_contactsDataProvider;
  if (!contactsDataProvider)
  {
    v4 = objc_alloc(MEMORY[0x29EDC6F88]);
    v5 = objc_alloc_init(MEMORY[0x29EDB8BB0]);
    v6 = [v4 initWithContactsDataSource:v5];
    v7 = self->_contactsDataProvider;
    self->_contactsDataProvider = v6;

    contactsDataProvider = self->_contactsDataProvider;
  }

  return contactsDataProvider;
}

@end