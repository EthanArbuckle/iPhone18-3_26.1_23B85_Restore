@interface PXSmartAlbumPhotoCondition
+ (id)defaultSingleQueryForEditingContext:(id)a3;
- (NSArray)photoTypeValues;
- (PXLabeledValue)photoTypeValue;
- (void)setPhotoTypeValue:(id)a3;
@end

@implementation PXSmartAlbumPhotoCondition

+ (id)defaultSingleQueryForEditingContext:(id)a3
{
  v3 = objc_alloc_init(MEMORY[0x1E69BF300]);
  [v3 setKey:1];
  [v3 setBoolValue:1];
  [v3 setComparator:1];

  return v3;
}

- (void)setPhotoTypeValue:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumPhotoCondition.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"photoTypeValue"}];
  }

  v6 = [(PXSmartAlbumPhotoCondition *)self photoTypeValues];
  v7 = [v6 containsObject:v5];

  if ((v7 & 1) == 0)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumPhotoCondition.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"[self.photoTypeValues containsObject:photoTypeValue]"}];
  }

  v8 = [v5 value];
  v9 = [v8 integerValue];
  switch(v9)
  {
    case 0:
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXSmartAlbumPhotoCondition setPhotoTypeValue:]"];
      [v19 handleFailureInFunction:v20 file:@"PXSmartAlbumPhotoCondition.m" lineNumber:54 description:@"Code which should be unreachable has been reached"];

      abort();
    case 1:
      v10 = 3;
      goto LABEL_27;
    case 2:
      v10 = 5;
      v11 = 10;
      break;
    case 3:
      v10 = 5;
      v11 = 12;
      break;
    case 4:
      v11 = 1;
      v10 = 1;
      break;
    case 5:
      v10 = 5;
      v11 = 9;
      break;
    case 6:
      v10 = 2;
      goto LABEL_27;
    case 7:
      v10 = 5;
      v11 = 3;
      break;
    case 8:
      v10 = 5;
      v11 = 2;
      break;
    case 9:
      v10 = 5;
      v11 = 4;
      break;
    case 10:
      v10 = 4;
      goto LABEL_27;
    case 11:
      v10 = 6;
      goto LABEL_27;
    case 12:
      v10 = 5;
      v11 = 8;
      break;
    case 13:
      v10 = 5;
      v11 = 7;
      break;
    case 14:
      v10 = 5;
      v11 = 11;
      break;
    case 15:
      v10 = 5;
      v11 = 6;
      break;
    case 16:
      v10 = 319;
      goto LABEL_27;
    case 17:
      v11 = 5;
      v10 = 5;
      break;
    case 18:
      v10 = 1000;
      goto LABEL_27;
    case 19:
      v10 = 9;
LABEL_27:
      v11 = 1;
      break;
    case 20:
      v10 = 5;
      v11 = 14;
      break;
    case 21:
      v10 = 5;
      v11 = 15;
      break;
    case 22:
      v10 = 5;
      v11 = 16;
      break;
    case 23:
      v10 = 5;
      v11 = 17;
      break;
    default:
      v11 = 0;
      v10 = 0;
      break;
  }

  v12 = [(PXSmartAlbumCondition *)self singleQuery];
  [v12 setKey:v10];
  [v12 setIntegerValue:v11];
  v13 = PLUIGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = PXSmartAlbumPhotoTypeDebugDescription(v9);
    v15 = PLStringFromPLQueryKey();
    *buf = 138412802;
    v22 = v14;
    v23 = 2112;
    v24 = v15;
    v25 = 2048;
    v26 = v11;
    _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEBUG, "PXSmartAlbums: photo type value set to: %@ (%@:%ld)", buf, 0x20u);
  }

  v16 = [(PXSmartAlbumCondition *)self delegate];
  [v16 conditionDidChange:self];
}

- (PXLabeledValue)photoTypeValue
{
  v4 = [(PXSmartAlbumCondition *)self singleQuery];
  v5 = PXSmartAlbumPhotoTypeForSingleQuery(v4);
  v6 = v5;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumPhotoCondition.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"photoType != PXSmartAlbumPhotoTypeInvalid"}];

    v5 = 0;
  }

  v7 = PXSmartAlbumLocalizedStringForPhotoType(v5);
  v8 = [PXLabeledValue alloc];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
  v10 = [(PXLabeledValue *)v8 initWithValue:v9 localizedLabel:v7];

  return v10;
}

- (NSArray)photoTypeValues
{
  photoTypeValues = self->_photoTypeValues;
  if (!photoTypeValues)
  {
    v4 = PXSmartAlbumLocalizedStringsForPhotoTypeValues(&unk_1F190FC70);
    v5 = PXLabeledValuesWithValuesAndLocalizedLabels(&unk_1F190FC70, v4);
    v6 = [v5 mutableCopy];

    v7 = PXSmartAlbumIndexOfValueInLabeledValues(v6, &unk_1F190A348);
    v8 = +[PXLabeledValue separatorLabeledValue];
    [(NSArray *)v6 insertObject:v8 atIndex:v7];

    v9 = PXSmartAlbumIndexOfValueInLabeledValues(v6, &unk_1F190A498);
    v10 = +[PXLabeledValue separatorLabeledValue];
    [(NSArray *)v6 insertObject:v10 atIndex:v9];

    v11 = self->_photoTypeValues;
    self->_photoTypeValues = v6;

    photoTypeValues = self->_photoTypeValues;
  }

  return photoTypeValues;
}

@end