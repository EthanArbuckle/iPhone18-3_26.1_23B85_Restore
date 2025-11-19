@interface KNHyperlinkController
+ (BOOL)URLContainsKeynoteSpecificHyperlink:(id)a3;
+ (id)displayStringForSlideLink:(int64_t)a3 url:(id)a4 documentRoot:(id)a5;
+ (id)uniqueIdentifierFromHyperlinkURL:(id)a3;
+ (int64_t)hyperlinkTypeFromHyperlinkURL:(id)a3;
+ (unint64_t)slideIndexForSlideLink:(id)a3 url:(id)a4;
@end

@implementation KNHyperlinkController

+ (id)uniqueIdentifierFromHyperlinkURL:(id)a3
{
  v3 = a3;
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_absoluteString(v3, v4, v5);
    v10 = objc_msgSend_length(v7, v8, v9);

    if (v10)
    {
      v13 = objc_msgSend_absoluteString(v6, v11, v12);
      if (objc_msgSend_rangeOfString_(v13, v14, @"?slideid="))
      {
        v10 = 0;
      }

      else
      {
        v10 = objc_msgSend_substringFromIndex_(v13, v15, 9);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)URLContainsKeynoteSpecificHyperlink:(id)a3
{
  v3 = objc_msgSend_absoluteString(a3, a2, a3);
  v7 = !objc_msgSend_rangeOfString_(v3, v4, @"?slide") || !objc_msgSend_rangeOfString_(v3, v5, @"?action") || !objc_msgSend_rangeOfString_(v3, v6, @"?id");

  return v7;
}

+ (int64_t)hyperlinkTypeFromHyperlinkURL:(id)a3
{
  v3 = objc_msgSend_absoluteString(a3, a2, a3);
  v6 = objc_msgSend_lowercaseString(v3, v4, v5);

  if (objc_msgSend_length(v6, v7, v8))
  {
    if (objc_msgSend_isEqualToString_(v6, v9, @"?action=exitpresentation"))
    {
      v11 = 7;
    }

    else if (objc_msgSend_isEqualToString_(v6, v10, @"?slide=last"))
    {
      v11 = 5;
    }

    else if (objc_msgSend_isEqualToString_(v6, v12, @"?slide=first"))
    {
      v11 = 4;
    }

    else if (objc_msgSend_isEqualToString_(v6, v13, @"?slide=previous"))
    {
      v11 = 3;
    }

    else if (objc_msgSend_isEqualToString_(v6, v14, @"?slide=next"))
    {
      v11 = 2;
    }

    else if (objc_msgSend_isEqualToString_(v6, v15, @"?action=retreat"))
    {
      v11 = 6;
    }

    else if (objc_msgSend_rangeOfString_(v6, v16, @"?slideid="))
    {
      if (objc_msgSend_rangeOfString_(v6, v17, @"mailto:"))
      {
        if (objc_msgSend_rangeOfString_(v6, v18, @"tel:"))
        {
          v11 = 9;
        }

        else
        {
          v11 = 10;
        }
      }

      else
      {
        v11 = 8;
      }
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)displayStringForSlideLink:(int64_t)a3 url:(id)a4 documentRoot:(id)a5
{
  v7 = a4;
  v9 = a5;
  v10 = &stru_2884D8E20;
  if (a3 > 3)
  {
    if (a3 > 5)
    {
      if (a3 == 6)
      {
        v12 = sub_275DC204C();
        objc_msgSend_localizedStringForKey_value_table_(v12, v20, @"Last Slide Viewed", &stru_2884D8E20, @"Keynote");
      }

      else
      {
        if (a3 != 7)
        {
          goto LABEL_21;
        }

        v12 = sub_275DC204C();
        objc_msgSend_localizedStringForKey_value_table_(v12, v16, @"Exit Slide­show", &stru_2884D8E20, @"Keynote");
      }
    }

    else
    {
      sub_275DC204C();
      if (a3 == 4)
        v12 = {;
        objc_msgSend_localizedStringForKey_value_table_(v12, v18, @"First Slide", &stru_2884D8E20, @"Keynote");
      }

      else
        v12 = {;
        objc_msgSend_localizedStringForKey_value_table_(v12, v14, @"Last Slide", &stru_2884D8E20, @"Keynote");
      }
    }
  }

  else if (a3 > 1)
  {
    sub_275DC204C();
    if (a3 == 2)
      v12 = {;
      objc_msgSend_localizedStringForKey_value_table_(v12, v19, @"Next Slide", &stru_2884D8E20, @"Keynote");
    }

    else
      v12 = {;
      objc_msgSend_localizedStringForKey_value_table_(v12, v15, @"Previous Slide", &stru_2884D8E20, @"Keynote");
    }
  }

  else if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_21;
    }

    v11 = objc_msgSend_slideIndexForSlideLink_url_(KNHyperlinkController, v8, v9, v7);
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = v11;
      v23 = MEMORY[0x277CCACA8];
      v12 = sub_275DC204C();
      v25 = objc_msgSend_localizedStringForKey_value_table_(v12, v24, @"Link to Slide %1$lu", &stru_2884D8E20, @"Keynote");
      v10 = objc_msgSend_localizedStringWithFormat_(v23, v26, v25, v22 + 1);

      goto LABEL_20;
    }

    v12 = sub_275DC204C();
    objc_msgSend_localizedStringForKey_value_table_(v12, v13, @"No Slide", &stru_2884D8E20, @"Keynote");
  }

  else
  {
    v12 = sub_275DC204C();
    objc_msgSend_localizedStringForKey_value_table_(v12, v17, @"None", &stru_2884D8E20, @"Keynote");
  }
  v10 = ;
LABEL_20:

LABEL_21:

  return v10;
}

+ (unint64_t)slideIndexForSlideLink:(id)a3 url:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = objc_msgSend_uniqueIdentifierFromHyperlinkURL_(KNHyperlinkController, v6, v7);
    objc_opt_class();
    v11 = objc_msgSend_show(v5, v9, v10);
    v12 = TSUDynamicCast();

    if (v8)
    {
      v15 = objc_msgSend_slideTree(v12, v13, v14);
      v18 = objc_msgSend_visibleSlideNodes(v15, v16, v17);

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v19 = v18;
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v35, v39, 16);
      if (v21)
      {
        v24 = v21;
        v33 = v12;
        v34 = v5;
        v25 = 0;
        v26 = *v36;
LABEL_5:
        v27 = 0;
        v28 = v25;
        v25 += v24;
        while (1)
        {
          if (*v36 != v26)
          {
            objc_enumerationMutation(v19);
          }

          v29 = objc_msgSend_uniqueIdentifier(*(*(&v35 + 1) + 8 * v27), v22, v23, v33, v34, v35);
          isEqualToString = objc_msgSend_isEqualToString_(v29, v30, v8);

          if (isEqualToString)
          {
            break;
          }

          ++v28;
          if (v24 == ++v27)
          {
            v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v35, v39, 16);
            if (v24)
            {
              goto LABEL_5;
            }

            v28 = 0x7FFFFFFFFFFFFFFFLL;
            break;
          }
        }

        v12 = v33;
        v5 = v34;
      }

      else
      {
        v28 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v28 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v28 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v28;
}

@end