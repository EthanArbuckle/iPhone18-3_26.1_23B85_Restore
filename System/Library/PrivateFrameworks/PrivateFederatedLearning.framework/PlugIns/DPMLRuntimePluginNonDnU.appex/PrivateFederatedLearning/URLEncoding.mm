@interface URLEncoding
+ (id)bitStringFromURL:(id)l encodingOption:(id)option urlEncodingParameters:(id)parameters encodingClient:(id)client error:(id *)error;
@end

@implementation URLEncoding

+ (id)bitStringFromURL:(id)l encodingOption:(id)option urlEncodingParameters:(id)parameters encodingClient:(id)client error:(id *)error
{
  optionCopy = option;
  clientCopy = client;
  parametersCopy = parameters;
  lCopy = l;
  v15 = [parametersCopy objectForKeyedSubscript:@"pathElementsBits"];
  intValue = [v15 intValue];

  v17 = [parametersCopy objectForKeyedSubscript:@"hostNameBits"];
  intValue2 = [v17 intValue];

  v19 = [parametersCopy objectForKeyedSubscript:@"pathLengthBits"];

  intValue3 = [v19 intValue];
  v21 = [NSURL URLWithString:lCopy];

  host = [v21 host];
  path = [v21 path];
  v24 = path;
  if (host && path)
  {
    errorCopy = error;
    v51 = clientCopy;
    if ([path length] < 2)
    {
      v33 = 0;
      v34 = &stru_100031E10;
    }

    else
    {
      v25 = [v24 componentsSeparatedByString:@"/"];
      v26 = intValue3;
      v27 = intValue;
      v28 = intValue2;
      v29 = v21;
      v30 = host;
      v31 = optionCopy;
      v32 = [v25 count];
      v33 = v32 - [v24 hasPrefix:@"/"];
      optionCopy = v31;
      host = v30;
      v21 = v29;
      intValue2 = v28;
      intValue = v27;
      intValue3 = v26;

      v34 = [FedStatsUtil sha1:v24];
    }

    v36 = [FedStatsUtil intToBitString:v33 length:intValue];
    v37 = +[FedStatsUtil intToBitString:length:](FedStatsUtil, "intToBitString:length:", [v24 length], intValue3);
    v38 = [FedStatsUtil sha1:host];
    v39 = [v38 substringToIndex:intValue2];

    if ([optionCopy isEqualToString:@"url_hash_hash"])
    {
      v40 = v37;
      v35 = [NSString stringWithFormat:@"%@%@", v39, v34];
      clientCopy = v51;
LABEL_29:

      goto LABEL_30;
    }

    clientCopy = v51;
    if ([optionCopy isEqualToString:@"url_hash_elements_hash"])
    {
      v40 = v37;
      [NSString stringWithFormat:@"%@%@%@", v39, v36, v34];
      v35 = LABEL_15:;
      goto LABEL_29;
    }

    if ([optionCopy isEqualToString:@"url_hash_elements_length"])
    {
      v40 = v37;
      [NSString stringWithFormat:@"%@%@%@", v39, v36, v37];
      goto LABEL_15;
    }

    v40 = v37;
    v35 = errorCopy;
    v41 = [v51 huffmanCode:host error:errorCopy];
    if (!v41)
    {
      if (errorCopy)
      {
        [NSString stringWithFormat:@"Host %@ is not in the Huffman database.", host];
        v42 = v47 = optionCopy;
        *errorCopy = [_DPMLRuntimeError errorWithCode:300 description:v42];

        optionCopy = v47;
        v41 = 0;
        clientCopy = v51;
        v35 = 0;
      }

      goto LABEL_28;
    }

    v49 = v41;
    if ([optionCopy isEqualToString:@"url_huffman_hash"])
    {
      [NSString stringWithFormat:@"%@%@", v49, v34, v45];
    }

    else
    {
      if ([optionCopy isEqualToString:@"url_huffman_emements_hash"])
      {
        v46 = v34;
      }

      else
      {
        if (![optionCopy isEqualToString:@"url_huffman_emements_length"])
        {
          v35 = errorCopy;
          if (errorCopy)
          {
            [NSString stringWithFormat:@"Unknown URL encoding option: %@.", optionCopy];
            v44 = v48 = optionCopy;
            *errorCopy = [_DPMLRuntimeError errorWithCode:300 description:v44];

            optionCopy = v48;
            clientCopy = v51;
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

  if (error)
  {
    [_DPMLRuntimeError errorWithCode:300 description:@"Host or path of URL is nil: %@."];
    *error = v35 = 0;
  }

  else
  {
    v35 = 0;
  }

LABEL_30:

  return v35;
}

@end