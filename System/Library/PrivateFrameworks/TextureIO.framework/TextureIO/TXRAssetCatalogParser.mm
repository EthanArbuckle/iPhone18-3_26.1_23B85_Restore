@interface TXRAssetCatalogParser
+ (id)exportSet:(id)a3 location:(id)a4 error:(id *)a5;
@end

@implementation TXRAssetCatalogParser

+ (id)exportSet:(id)a3 location:(id)a4 error:(id *)a5
{
  v102[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v7 configs];
  v10 = [v9 objectAtIndexedSubscript:0];
  v11 = [v10 texture];
  v12 = [v11 cubemap];

  v13 = objc_alloc(MEMORY[0x277CCAB68]);
  v84 = v8;
  v14 = [v8 absoluteString];
  v15 = [v7 name];
  v16 = v15;
  v92 = v12;
  if (v12)
  {
    v17 = @"%@/%@.cubetextureset";
  }

  else
  {
    v17 = @"%@/%@.textureset";
  }

  v18 = [v13 initWithFormat:v17, v14, v15];

  v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/Contents.json", v18];
  [MEMORY[0x277CCAA00] defaultManager];
  v91 = v97 = 0;
  v87 = a5;
  v83 = v7;
  v81 = v19;
  if ([v91 fileExistsAtPath:v19 isDirectory:&v97] && (v97 & 1) == 0)
  {
    v25 = [objc_alloc(MEMORY[0x277CBEAE0]) initWithFileAtPath:v19];
    [v25 open];
    v39 = [MEMORY[0x277CCAAA0] JSONObjectWithStream:v25 options:1 error:a5];
    [v25 close];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = v39;
    }

    else
    {
      if (a5)
      {
        *a5 = _newTXRErrorWithCodeAndErrorString(3, @"Unexpected format of Contents.json");

        v82 = 0;
        v86 = 0;
        v36 = 0;
        goto LABEL_92;
      }

      v36 = 0;
    }

    v67 = [v36 objectForKeyedSubscript:@"properties"];
    if (!v67)
    {
      goto LABEL_97;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v82 = v67;
      goto LABEL_98;
    }

    if (!a5)
    {
LABEL_97:
      v82 = 0;
LABEL_98:
      v70 = [v36 objectForKeyedSubscript:@"textures"];
      if (v70)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v86 = v70;
        }

        else
        {
          if (a5)
          {
            _newTXRErrorWithCodeAndErrorString(3, @"Value of textures key is not an array");
            v75 = 0;
            *a5 = v86 = 0;
            goto LABEL_107;
          }

          v86 = 0;
        }
      }

      else
      {
        v71 = objc_alloc(MEMORY[0x277CBEB18]);
        [v7 configs];
        v73 = v72 = v25;
        v74 = [v71 initWithCapacity:{objc_msgSend(v73, "count")}];

        v25 = v72;
        v86 = v74;
        [v36 setObject:v74 forKeyedSubscript:@"textures"];
      }

      v75 = 1;
LABEL_107:

      if ((v75 & 1) == 0)
      {
LABEL_111:
        v40 = 0;
        goto LABEL_94;
      }

      v37 = v82;
      if (![v7 interpretation])
      {
        if (v82)
        {
          [v82 removeObjectForKey:@"interpretation"];
        }

LABEL_25:
        if ([v7 origin] == 1)
        {
          if (v37)
          {
            [v37 setObject:@"bottom-left" forKeyedSubscript:@"origin"];
LABEL_36:
            v82 = v37;
            [v36 setObject:v37 forKeyedSubscript:@"properties"];
LABEL_38:
            v95 = 0u;
            v96 = 0u;
            v93 = 0u;
            v94 = 0u;
            v25 = [v7 configs];
            v77 = [v25 countByEnumeratingWithState:&v93 objects:v98 count:16];
            if (v77)
            {
              v41 = *v94;
              v85 = v18;
              v79 = v25;
              v80 = v36;
              v76 = *v94;
              while (1)
              {
                v42 = 0;
LABEL_41:
                if (*v94 != v41)
                {
                  objc_enumerationMutation(v25);
                }

                v43 = *(*(&v93 + 1) + 8 * v42);
                v44 = [v43 texture];
                v45 = [v44 cubemap];

                if (v92 != v45)
                {
                  break;
                }

                v78 = v42;
                v46 = 0;
                do
                {
                  v47 = [v43 idiom];
                  if (v47 > 5)
                  {
                    v48 = 0;
                    v49 = 0;
                  }

                  else
                  {
                    v48 = off_279DBC098[v47];
                    v49 = off_279DBC0C8[v47];
                  }

                  v50 = [v43 graphicsFeatureSet] - 1;
                  if (v50 > 3)
                  {
                    v89 = 0;
                    v90 = 0;
                  }

                  else
                  {
                    v89 = off_279DBC118[v50];
                    v90 = off_279DBC0F8[v50];
                  }

                  v51 = [v43 memory] - 1;
                  if (v51 > 3)
                  {
                    v52 = 0;
                    v53 = 0;
                  }

                  else
                  {
                    v52 = off_279DBC138[v51];
                    v53 = off_279DBC158[v51];
                  }

                  v54 = [v43 displayColorSpace];
                  v55 = @"sRGB";
                  if (v54 != 1)
                  {
                    v55 = 0;
                  }

                  if (v54 == 2)
                  {
                    v56 = @"P3";
                  }

                  else
                  {
                    v56 = v55;
                  }

                  v57 = 0;
                  v58 = [v43 scaleFactor] - 1;
                  if (v58 <= 2)
                  {
                    v57 = off_279DBC178[v58];
                  }

                  v59 = [v43 pixelFormat];
                  if ((v59 - 1) > 0xB)
                  {
                    v88 = 0;
                  }

                  else
                  {
                    v88 = off_279DBC190[v59 - 1];
                  }

                  v60 = objc_alloc_init(MEMORY[0x277CCAB68]);
                  v61 = objc_alloc_init(MEMORY[0x277CBEB38]);
                  [v61 setObject:v49 forKeyedSubscript:@"idiom"];
                  [v60 setString:v48];
                  if (v92)
                  {
                    v62 = off_279DBC1F0[v46];
                    [v61 setObject:off_279DBC220[v46] forKeyedSubscript:@"cube-face"];
                    [v60 appendString:@" "];
                    [v60 appendString:v62];
                  }

                  if ([v43 memory])
                  {
                    [v61 setObject:v53 forKeyedSubscript:@"memory"];
                    [v60 appendString:@" "];
                    [v60 appendString:v52];
                  }

                  if ([v43 graphicsFeatureSet])
                  {
                    [v61 setObject:v89 forKeyedSubscript:@"graphics-feature-set"];
                    [v60 appendString:@" "];
                    [v60 appendString:v90];
                  }

                  a5 = v87;
                  if ([v43 displayColorSpace])
                  {
                    [v61 setObject:v56 forKeyedSubscript:@"color-space"];
                    [v60 appendString:@" "];
                    [v60 appendString:v56];
                  }

                  if ([v43 scaleFactor])
                  {
                    [v61 setObject:v57 forKeyedSubscript:@"scale"];
                    [v60 appendString:@" "];
                    [v60 appendString:v57];
                  }

                  if ([v43 pixelFormat])
                  {
                    [v61 setObject:v88 forKeyedSubscript:@"pixel-format"];
                  }

                  [v60 appendString:@".mipmapset"];
                  [v61 setObject:v60 forKeyedSubscript:@"filename"];
                  [v86 addObject:v61];
                  v18 = v85;
                  v63 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@", v85, v60];
                  [v91 createDirectoryAtPath:v63 withIntermediateDirectories:1 attributes:0 error:v87];
                  v64 = [TXRAssetCatalogParser exportSetConfig:v43 face:v46 directoryPath:v63 error:v87];

                  if (!v64)
                  {
                    v40 = 0;
                    v7 = v83;
                    v25 = v79;
                    v36 = v80;
                    goto LABEL_93;
                  }

                  v65 = v46;
                  v46 = (v46 + 1);
                  if (v65 < 5)
                  {
                    v66 = v92;
                  }

                  else
                  {
                    v66 = 0;
                  }
                }

                while (v66 == 1);
                v42 = v78 + 1;
                v7 = v83;
                v25 = v79;
                v36 = v80;
                v41 = v76;
                if (v78 + 1 != v77)
                {
                  goto LABEL_41;
                }

                v77 = [v79 countByEnumeratingWithState:&v93 objects:v98 count:16];
                if (!v77)
                {
                  goto LABEL_83;
                }
              }

              _newTXRErrorWithCodeAndErrorString(7, @"Inconsistant set specifed.  Some mipmapsets specified are cubemap textures while other mipmapsets are 2D textures");
              *a5 = v40 = 0;
              v7 = v83;
              v36 = v80;
              goto LABEL_93;
            }

LABEL_83:

            if (writeContentsJsonAtPath(v36, v18, a5))
            {
              v25 = [v18 stringByReplacingOccurrencesOfString:@" " withString:@"%20"];
              v40 = [MEMORY[0x277CBEBC0] fileURLWithPath:v25];
              goto LABEL_93;
            }

            goto LABEL_111;
          }

          v37 = objc_alloc_init(MEMORY[0x277CBEB38]);
          [v37 setObject:@"bottom-left" forKeyedSubscript:@"origin"];
          if (v37)
          {
            goto LABEL_36;
          }
        }

        else if (v37)
        {
          [v37 removeObjectForKey:@"origin"];
          goto LABEL_36;
        }

        v82 = 0;
        goto LABEL_38;
      }

      if (v82)
      {
LABEL_17:
        if ([v7 interpretation] == 1)
        {
          v38 = @"non-premultiplied-colors";
        }

        else
        {
          if ([v7 interpretation] != 2)
          {
            +[TXRAssetCatalogParser exportSet:location:error:];
          }

          v38 = @"data";
        }

        [v37 setObject:v38 forKeyedSubscript:@"interpretation"];
        goto LABEL_25;
      }

LABEL_16:
      v37 = objc_alloc_init(MEMORY[0x277CBEB38]);
      goto LABEL_17;
    }

    *a5 = _newTXRErrorWithCodeAndErrorString(3, @"Value of properties key is not an object");

    v82 = 0;
    v86 = 0;
LABEL_92:
    v40 = 0;
    goto LABEL_93;
  }

  v20 = [v7 name];
  v21 = [v20 componentsSeparatedByString:@"/"];

  v22 = objc_alloc(MEMORY[0x277CCAB68]);
  v23 = [v8 absoluteString];
  v24 = [v22 initWithFormat:@"%@", v23];

  v25 = v21;
  if ([v21 count] == 1)
  {
    v26 = 1;
    v27 = v21;
LABEL_15:
    v31 = v26 & 1;
    a5 = v87;
    [v91 createDirectoryAtPath:v18 withIntermediateDirectories:v31 attributes:0 error:v87];
    v32 = objc_alloc(MEMORY[0x277CBEB18]);
    v33 = [v7 configs];
    v34 = [v32 initWithCapacity:{objc_msgSend(v33, "count")}];

    v99[0] = @"info";
    v99[1] = @"textures";
    v100[0] = &unk_287F0A090;
    v100[1] = v34;
    v86 = v34;
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v100 forKeys:v99 count:2];
    v36 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v35];

    if (![v7 interpretation])
    {
      v37 = 0;
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  v28 = 0;
  v26 = 1;
  v27 = v21;
  while (1)
  {
    [v24 appendString:@"/"];
    v29 = [v27 objectAtIndexedSubscript:v28];
    [v24 appendString:v29];

    if ([v91 fileExistsAtPath:v24 isDirectory:&v97] && (v97 & 1) != 0)
    {
      goto LABEL_14;
    }

    if (([v91 createDirectoryAtPath:v24 withIntermediateDirectories:v26 & 1 attributes:0 error:v87] & 1) == 0)
    {
      *v87 = _newTXRErrorWithCodeAndErrorString(5, @"Could not create folder hierarchy for texture name");
      goto LABEL_34;
    }

    v101 = @"info";
    v102[0] = &unk_287F0A090;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:&v101 count:1];
    if (!writeContentsJsonAtPath(v30, v24, v87))
    {
      break;
    }

    v26 = 0;
LABEL_14:
    ++v28;
    v27 = v21;
    if (v28 >= [v21 count] - 1)
    {
      goto LABEL_15;
    }
  }

  *v87 = _newTXRErrorWithCodeAndErrorString(5, @"Could not create Content.json for hierarchy of texture name");

LABEL_34:
  v82 = 0;
  v86 = 0;
  v36 = 0;
  v40 = 0;
LABEL_93:

LABEL_94:
  v68 = *MEMORY[0x277D85DE8];

  return v40;
}

@end