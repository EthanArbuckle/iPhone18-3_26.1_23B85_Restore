@interface URLEncoding
+ (id)bitStringFromURL:(id)a3 encodingOption:(id)a4 urlEncodingParameters:(id)a5 encodingClient:(id)a6 error:(id *)a7;
@end

@implementation URLEncoding

+ (id)bitStringFromURL:(id)a3 encodingOption:(id)a4 urlEncodingParameters:(id)a5 encodingClient:(id)a6 error:(id *)a7
{
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = a3;
  v15 = [v13 objectForKeyedSubscript:@"pathElementsBits"];
  v16 = [v15 intValue];

  v17 = [v13 objectForKeyedSubscript:@"hostNameBits"];
  v18 = [v17 intValue];

  v19 = [v13 objectForKeyedSubscript:@"pathLengthBits"];

  v20 = [v19 intValue];
  v21 = [NSURL URLWithString:v14];

  v22 = [v21 host];
  v23 = [v21 path];
  v24 = v23;
  if (v22 && v23)
  {
    v50 = a7;
    v51 = v12;
    if ([v23 length] < 2)
    {
      v33 = 0;
      v34 = &stru_10002D560;
    }

    else
    {
      v25 = [v24 componentsSeparatedByString:@"/"];
      v26 = v20;
      v27 = v16;
      v28 = v18;
      v29 = v21;
      v30 = v22;
      v31 = v11;
      v32 = [v25 count];
      v33 = v32 - [v24 hasPrefix:@"/"];
      v11 = v31;
      v22 = v30;
      v21 = v29;
      v18 = v28;
      v16 = v27;
      v20 = v26;

      v34 = [FedStatsUtil sha1:v24];
    }

    v36 = [FedStatsUtil intToBitString:v33 length:v16];
    v37 = +[FedStatsUtil intToBitString:length:](FedStatsUtil, "intToBitString:length:", [v24 length], v20);
    v38 = [FedStatsUtil sha1:v22];
    v39 = [v38 substringToIndex:v18];

    if ([v11 isEqualToString:@"url_hash_hash"])
    {
      v40 = v37;
      v35 = [NSString stringWithFormat:@"%@%@", v39, v34];
      v12 = v51;
LABEL_29:

      goto LABEL_30;
    }

    v12 = v51;
    if ([v11 isEqualToString:@"url_hash_elements_hash"])
    {
      v40 = v37;
      [NSString stringWithFormat:@"%@%@%@", v39, v36, v34];
      v35 = LABEL_15:;
      goto LABEL_29;
    }

    if ([v11 isEqualToString:@"url_hash_elements_length"])
    {
      v40 = v37;
      [NSString stringWithFormat:@"%@%@%@", v39, v36, v37];
      goto LABEL_15;
    }

    v40 = v37;
    v35 = v50;
    v41 = [v51 huffmanCode:v22 error:v50];
    if (!v41)
    {
      if (v50)
      {
        [NSString stringWithFormat:@"Host %@ is not in the Huffman database.", v22];
        v42 = v47 = v11;
        *v50 = [_DPMLRuntimeError errorWithCode:300 description:v42];

        v11 = v47;
        v41 = 0;
        v12 = v51;
        v35 = 0;
      }

      goto LABEL_28;
    }

    v49 = v41;
    if ([v11 isEqualToString:@"url_huffman_hash"])
    {
      [NSString stringWithFormat:@"%@%@", v49, v34, v45];
    }

    else
    {
      if ([v11 isEqualToString:@"url_huffman_emements_hash"])
      {
        v46 = v34;
      }

      else
      {
        if (![v11 isEqualToString:@"url_huffman_emements_length"])
        {
          v35 = v50;
          if (v50)
          {
            [NSString stringWithFormat:@"Unknown URL encoding option: %@.", v11];
            v44 = v48 = v11;
            *v50 = [_DPMLRuntimeError errorWithCode:300 description:v44];

            v11 = v48;
            v12 = v51;
            v35 = 0;
          }

          goto LABEL_27;
        }

        v46 = v40;
      }

      [NSString stringWithFormat:@"%@%@%@", v49, v36, v46];
    }
    v35 = ;
LABEL_27:
    v41 = v49;
LABEL_28:

    goto LABEL_29;
  }

  if (a7)
  {
    [_DPMLRuntimeError errorWithCode:300 description:@"Host or path of URL is nil: %@."];
    *a7 = v35 = 0;
  }

  else
  {
    v35 = 0;
  }

LABEL_30:

  return v35;
}

@end