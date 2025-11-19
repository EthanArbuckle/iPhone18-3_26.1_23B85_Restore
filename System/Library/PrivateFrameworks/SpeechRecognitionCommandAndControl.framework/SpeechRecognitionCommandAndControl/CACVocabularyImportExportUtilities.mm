@interface CACVocabularyImportExportUtilities
+ (id)defaultExportURL;
+ (id)exportToURL:(id)a3;
+ (id)importFromURL:(id)a3;
@end

@implementation CACVocabularyImportExportUtilities

+ (id)defaultExportURL
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = MEMORY[0x277CCACA8];
  v4 = [CACLocaleUtilities localizedUIStringForKey:@"VocabularyImportExport.defaultExportedFileName"];
  v5 = [v3 stringWithFormat:@"~/%@", v4];
  v6 = [v5 stringByExpandingTildeInPath];
  v7 = [v6 stringByAppendingPathExtension:kCACVocabularyFileExtensionVCVocabulary];
  v8 = [v2 fileURLWithPath:v7 isDirectory:0];

  return v8;
}

+ (id)importFromURL:(id)a3
{
  if (a3)
  {
    v14 = 0;
    v3 = [VCVocabularyObjC importFrom:a3 error:&v14];
    v4 = v14;
    v5 = [CACImportExportResult alloc];
    v6 = v5;
    if (v4)
    {
      v7 = [(CACImportExportResult *)v5 initWithError:v4 title:0 message:0];
    }

    else
    {
      v8 = [CACLocaleUtilities localizedUIStringForKey:@"VocabularyImportExport.importCompleteAlertTitle"];
      v7 = [(CACImportExportResult *)v6 initWithError:0 title:v8 message:0];

      if (v3 < 1)
      {
        v12 = [CACLocaleUtilities localizedUIStringForKey:@"VocabularyImportExport.importCompleteAlertDescriptionNoEntries"];
        [(CACImportExportResult *)v7 setMessage:v12];
      }

      else
      {
        v9 = MEMORY[0x277CCACA8];
        v10 = [CACLocaleUtilities localizedUIStringForKey:@"VocabularyImportExport.importCompleteAlertDescription"];
        v11 = [v9 stringWithValidatedFormat:v10 validFormatSpecifiers:@"%ld" error:0, v3];
        [(CACImportExportResult *)v7 setMessage:v11];
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)exportToURL:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = +[CACPreferences sharedPreferences];
    v5 = [v4 bestLocaleIdentifier];

    v14 = 0;
    v6 = [VCVocabularyObjC exportTo:v3 localeIdentifier:v5 error:&v14];
    v7 = v14;
    if (v7)
    {
      v8 = [[CACImportExportResult alloc] initWithError:v7 title:0 message:0];
    }

    else if (v6)
    {
      v8 = 0;
    }

    else
    {
      v11 = [CACImportExportResult alloc];
      v12 = [CACLocaleUtilities localizedUIStringForKey:@"VocabularyImportExport.exportNoEntriesAlertTitle"];
      v8 = [(CACImportExportResult *)v11 initWithError:0 title:v12 message:0];
    }
  }

  else
  {
    v9 = [CACImportExportResult alloc];
    v10 = [CACLocaleUtilities localizedUIStringForKey:@"VocabularyImportExport.failedToCreateURL"];
    v8 = [(CACImportExportResult *)v9 initWithError:0 title:v10 message:0];
  }

  return v8;
}

@end