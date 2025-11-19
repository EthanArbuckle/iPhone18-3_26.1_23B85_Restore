@interface SDMLFeedbackResourceManager
+ (id)allTextAttributes;
+ (id)allTextFeatures;
+ (id)logKeyNameForAttributeName:(id)a3 forOption:(unint64_t)a4;
@end

@implementation SDMLFeedbackResourceManager

+ (id)logKeyNameForAttributeName:(id)a3 forOption:(unint64_t)a4
{
  if (a4 > 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(&off_1000927E8 + a4);
  }

  return [NSString stringWithFormat:@"%@%@", a3, v6, v4, v5];
}

+ (id)allTextFeatures
{
  v4[0] = @"cosine";
  v4[1] = @"ordered_span_prefix";
  v4[2] = @"unordered_span_prefix";
  v4[3] = @"ordered_span_word";
  v4[4] = @"unordered_span_word";
  v4[5] = @"ordered_word_field_coverage";
  v4[6] = @"ordered_prefix_field_coverage";
  v4[7] = @"ordered_word_min_pair_distance";
  v4[8] = @"ordered_prefix_min_pair_distance";
  v4[9] = @"ordered_word_first_term_position";
  v4[10] = @"ordered_prefix_first_term_position";
  v2 = [NSArray arrayWithObjects:v4 count:11];

  return v2;
}

+ (id)allTextAttributes
{
  v4[0] = MDItemDisplayName;
  v4[1] = MDItemTitle;
  v4[2] = MDItemSubject;
  v4[3] = MDItemAuthors;
  v4[4] = MDItemArtist;
  v4[5] = MDItemRecipients;
  v4[6] = MDItemAlbum;
  v4[7] = MDItemNamedLocation;
  v4[8] = MDItemAlternateNames;
  v4[9] = @"_kMDItemSnippet";
  v4[10] = MDItemDescription;
  v4[11] = MDItemOrganizations;
  v2 = [NSArray arrayWithObjects:v4 count:12];

  return v2;
}

@end