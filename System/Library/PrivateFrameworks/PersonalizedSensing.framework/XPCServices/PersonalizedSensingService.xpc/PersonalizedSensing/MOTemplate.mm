@interface MOTemplate
- (BOOL)isEqual:(id)equal;
- (MOTemplate)initWithCoder:(id)coder;
- (MOTemplate)initWithTemplateIdentifier:(id)identifier;
- (MOTemplate)initWithTemplateIdentifier:(id)identifier patternType:(unint64_t)type placeType:(unint64_t)placeType activityType:(unint64_t)activityType time:(unint64_t)time bundleType:(unint64_t)bundleType peopleClassification:(unint64_t)classification hasPersonName:(BOOL)self0 hasPlaceName:(BOOL)self1 hasCityName:(BOOL)self2 hasTimeReference:(BOOL)self3 templateString:(id)self4 utility:(double)self5 accuracy:(double)self6 satisfaction:(double)self7 generalizability:(double)self8 promptIndex:(unint64_t)self9;
- (MOTemplate)initWithTemplateMO:(id)o;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOTemplate

- (MOTemplate)initWithTemplateMO:(id)o
{
  oCopy = o;
  if (oCopy)
  {
    v5 = [MOTemplate alloc];
    templateIdentifier = [oCopy templateIdentifier];
    v7 = [(MOTemplate *)v5 initWithTemplateIdentifier:templateIdentifier];

    templateString = [oCopy templateString];
    [(MOTemplate *)v7 setTemplateString:templateString];

    -[MOTemplate setPatternType:](v7, "setPatternType:", [oCopy patternType]);
    -[MOTemplate setActivityType:](v7, "setActivityType:", [oCopy activityType]);
    -[MOTemplate setPlaceType:](v7, "setPlaceType:", [oCopy placeType]);
    -[MOTemplate setTime:](v7, "setTime:", [oCopy time]);
    -[MOTemplate setBundleType:](v7, "setBundleType:", [oCopy bundleType]);
    -[MOTemplate setPeopleClassification:](v7, "setPeopleClassification:", [oCopy peopleClassification]);
    -[MOTemplate setHasPersonName:](v7, "setHasPersonName:", [oCopy hasPersonName]);
    -[MOTemplate setHasPlaceName:](v7, "setHasPlaceName:", [oCopy hasPlaceName]);
    -[MOTemplate setHasCityName:](v7, "setHasCityName:", [oCopy hasCityName]);
    -[MOTemplate setHasTimeReference:](v7, "setHasTimeReference:", [oCopy hasTimeReference]);
    -[MOTemplate setPhotoTrait:](v7, "setPhotoTrait:", [oCopy photoTrait]);
    [oCopy utility];
    [(MOTemplate *)v7 setUtility:?];
    [oCopy accuracy];
    [(MOTemplate *)v7 setAccuracy:?];
    [oCopy satisfaction];
    [(MOTemplate *)v7 setSatisfaction:?];
    [oCopy generalizability];
    [(MOTemplate *)v7 setGeneralizability:?];
    -[MOTemplate setPromptIndex:](v7, "setPromptIndex:", [oCopy promptIndex]);
    [oCopy totalScore];
    [(MOTemplate *)v7 setTotalScore:?];
    NSSelectorFromString(@"globalTraits");
    if (objc_opt_respondsToSelector())
    {
      v9 = objc_opt_new();
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      globalTraits = [oCopy globalTraits];
      v11 = [globalTraits countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v19;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(globalTraits);
            }

            v15 = [[MOGlobalTrait alloc] initWithGlobalTraitMO:*(*(&v18 + 1) + 8 * i)];
            [v9 addObject:v15];
          }

          v12 = [globalTraits countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v12);
      }

      v16 = [v9 copy];
      [(MOTemplate *)v7 setGlobalTraits:v16];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (MOTemplate)initWithTemplateIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = MOTemplate;
  v6 = [(MOTemplate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_templateIdentifier, identifier);
  }

  return v7;
}

- (MOTemplate)initWithTemplateIdentifier:(id)identifier patternType:(unint64_t)type placeType:(unint64_t)placeType activityType:(unint64_t)activityType time:(unint64_t)time bundleType:(unint64_t)bundleType peopleClassification:(unint64_t)classification hasPersonName:(BOOL)self0 hasPlaceName:(BOOL)self1 hasCityName:(BOOL)self2 hasTimeReference:(BOOL)self3 templateString:(id)self4 utility:(double)self5 accuracy:(double)self6 satisfaction:(double)self7 generalizability:(double)self8 promptIndex:(unint64_t)self9
{
  identifierCopy = identifier;
  stringCopy = string;
  v35.receiver = self;
  v35.super_class = MOTemplate;
  v32 = [(MOTemplate *)&v35 init];
  v33 = v32;
  if (v32)
  {
    objc_storeStrong(&v32->_templateIdentifier, identifier);
    v33->_patternType = type;
    v33->_activityType = activityType;
    v33->_placeType = placeType;
    v33->_time = time;
    v33->_bundleType = bundleType;
    v33->_peopleClassification = classification;
    v33->_hasPersonName = name;
    v33->_hasPlaceName = placeName;
    v33->_hasCityName = cityName;
    v33->_hasTimeReference = reference;
    objc_storeStrong(&v33->_templateString, string);
    v33->_utility = utility;
    v33->_accuracy = accuracy;
    v33->_satisfaction = satisfaction;
    v33->_generalizability = generalizability;
    v33->_promptIndex = index;
  }

  return v33;
}

- (void)encodeWithCoder:(id)coder
{
  templateIdentifier = self->_templateIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:templateIdentifier forKey:@"templateIdentifier"];
  [coderCopy encodeInteger:self->_patternType forKey:@"patternType"];
  [coderCopy encodeInteger:self->_placeType forKey:@"placeType"];
  [coderCopy encodeInteger:self->_bundleType forKey:@"bundleType"];
  [coderCopy encodeInteger:self->_peopleClassification forKey:@"peopleClassification"];
  [coderCopy encodeInteger:self->_time forKey:@"time"];
  [coderCopy encodeInteger:self->_activityType forKey:@"activityType"];
  [coderCopy encodeBool:self->_hasPersonName forKey:@"hasPersonName"];
  [coderCopy encodeBool:self->_hasPlaceName forKey:@"hasPlaceName"];
  [coderCopy encodeBool:self->_hasCityName forKey:@"hasCityName"];
  [coderCopy encodeBool:self->_hasTimeReference forKey:@"hasTimeReference"];
  [coderCopy encodeInteger:self->_photoTrait forKey:@"photoTrait"];
  [coderCopy encodeObject:self->_globalTraits forKey:@"globalTraits"];
  [coderCopy encodeObject:self->_templateString forKey:@"templateString"];
  [coderCopy encodeDouble:@"utility" forKey:self->_utility];
  [coderCopy encodeDouble:@"accuracy" forKey:self->_accuracy];
  [coderCopy encodeDouble:@"satisfaction" forKey:self->_satisfaction];
  [coderCopy encodeDouble:@"generalizability" forKey:self->_generalizability];
  [coderCopy encodeInteger:self->_promptIndex forKey:@"promptIndex"];
  [coderCopy encodeDouble:@"totalScore" forKey:self->_totalScore];
  [coderCopy encodeInteger:self->_promptVersion forKey:@"promptVersion"];
}

- (MOTemplate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = MOTemplate;
  v5 = [(MOTemplate *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"templateIdentifier"];
    templateIdentifier = v5->_templateIdentifier;
    v5->_templateIdentifier = v6;

    v5->_patternType = [coderCopy decodeIntegerForKey:@"patternType"];
    v5->_placeType = [coderCopy decodeIntegerForKey:@"placeType"];
    v5->_bundleType = [coderCopy decodeIntegerForKey:@"bundleType"];
    v5->_peopleClassification = [coderCopy decodeIntegerForKey:@"peopleClassification"];
    v5->_time = [coderCopy decodeIntegerForKey:@"time"];
    v5->_activityType = [coderCopy decodeIntegerForKey:@"activityType"];
    v5->_photoTrait = [coderCopy decodeIntegerForKey:@"photoTrait"];
    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"globalTraits"];
    globalTraits = v5->_globalTraits;
    v5->_globalTraits = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"templateString"];
    templateString = v5->_templateString;
    v5->_templateString = v12;

    v5->_hasPersonName = [coderCopy decodeBoolForKey:@"hasPersonName"];
    v5->_hasPlaceName = [coderCopy decodeBoolForKey:@"hasPlaceName"];
    v5->_hasCityName = [coderCopy decodeBoolForKey:@"hasCityName"];
    v5->_hasTimeReference = [coderCopy decodeBoolForKey:@"hasTimeReference"];
    [coderCopy decodeDoubleForKey:@"utility"];
    v5->_utility = v14;
    [coderCopy decodeDoubleForKey:@"accuracy"];
    v5->_accuracy = v15;
    [coderCopy decodeDoubleForKey:@"satisfaction"];
    v5->_satisfaction = v16;
    [coderCopy decodeDoubleForKey:@"generalizability"];
    v5->_generalizability = v17;
    v5->_promptIndex = [coderCopy decodeIntegerForKey:@"promptIndex"];
    [coderCopy decodeDoubleForKey:@"totalScore"];
    v5->_totalScore = v18;
    v5->_promptVersion = [coderCopy decodeIntForKey:@"promptVersion"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MOTemplate);
  objc_storeStrong(&v4->_templateIdentifier, self->_templateIdentifier);
  v4->_patternType = self->_patternType;
  v4->_placeType = self->_placeType;
  v4->_peopleClassification = self->_peopleClassification;
  v4->_time = self->_time;
  v4->_activityType = self->_activityType;
  v4->_photoTrait = self->_photoTrait;
  objc_storeStrong(&v4->_globalTraits, self->_globalTraits);
  objc_storeStrong(&v4->_templateString, self->_templateString);
  v4->_hasPersonName = self->_hasPersonName;
  v4->_hasPlaceName = self->_hasPlaceName;
  v4->_hasCityName = self->_hasCityName;
  v4->_hasTimeReference = self->_hasTimeReference;
  v4->_utility = self->_utility;
  v4->_accuracy = self->_accuracy;
  v4->_satisfaction = self->_satisfaction;
  v4->_generalizability = self->_generalizability;
  v4->_promptIndex = self->_promptIndex;
  v4->_totalScore = self->_totalScore;
  v4->_promptVersion = self->_promptVersion;
  return v4;
}

- (id)description
{
  v2 = [[NSString alloc] initWithFormat:@"template id, %@, template string, %@, accuracy, %f, satisfaction, %f, has place name, %d, has city name, %d, has person name, %d, has time reference, %d, pattern type, %lu, prompt index, %lu, totalScore, %f", self->_templateIdentifier, self->_templateString, *&self->_accuracy, *&self->_satisfaction, self->_hasPlaceName, self->_hasCityName, self->_hasPersonName, self->_hasTimeReference, self->_patternType, self->_promptIndex, *&self->_totalScore];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        templateIdentifier = [(MOTemplate *)self templateIdentifier];
        if (templateIdentifier || ([(MOTemplate *)v7 templateIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          templateIdentifier2 = [(MOTemplate *)self templateIdentifier];
          templateIdentifier3 = [(MOTemplate *)v7 templateIdentifier];
          v11 = [templateIdentifier2 isEqual:templateIdentifier3];

          if (templateIdentifier)
          {
LABEL_12:

            templateString = [(MOTemplate *)self templateString];
            if (templateString || ([(MOTemplate *)v7 templateString], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              templateString2 = [(MOTemplate *)self templateString];
              templateString3 = [(MOTemplate *)v7 templateString];
              v16 = [templateString2 isEqual:templateString3];

              if (templateString)
              {
LABEL_18:

                v12 = v11 & v16;
                goto LABEL_19;
              }
            }

            else
            {
              v16 = 1;
            }

            goto LABEL_18;
          }
        }

        else
        {
          v11 = 1;
        }

        goto LABEL_12;
      }
    }

    v12 = 0;
  }

LABEL_19:

  return v12;
}

@end