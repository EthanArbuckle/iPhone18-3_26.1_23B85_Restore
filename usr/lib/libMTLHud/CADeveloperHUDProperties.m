@interface CADeveloperHUDProperties
@end

@implementation CADeveloperHUDProperties

uint64_t __37___CADeveloperHUDProperties_instance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = instance_sharedInstance;
  instance_sharedInstance = v1;

  return _objc_release_x1(v1, v2);
}

void __36___CADeveloperHUDProperties_remove___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __36___CADeveloperHUDProperties_remove___block_invoke_2;
  v2[3] = &unk_6A308;
  v3 = *(a1 + 40);
  [v1 enumerateKeysAndObjectsUsingBlock:v2];
}

void __36___CADeveloperHUDProperties_remove___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v4 = [v5 getMetric:*(a1 + 32)];
  if (v4)
  {
    [v5 removeMetrics:*(a1 + 32)];
  }
}

void __47___CADeveloperHUDProperties_updateLabel_value___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:@"com.apple.hud.overlay.main"];
  if (v2)
  {
    v21 = v2;
    v3 = [v2 getMetric:*(a1 + 40)];
    v2 = v21;
    if (v3)
    {
      v4 = +[NSCharacterSet whitespaceCharacterSet];
      if (*([v3 descriptor] + 10) == 3)
      {
        if ([*(a1 + 40) isEqualToString:@"com.apple.hud-label.metalfx.resolution"])
        {
          v5 = *(a1 + 48);
LABEL_23:
          [v3 setStringValue:v5];
          goto LABEL_34;
        }

        if ([*(a1 + 40) isEqualToString:@"com.apple.hud-label.metalfx.content_resolution"])
        {
          v6 = [*(a1 + 48) rangeOfString:@"(content size)"];
          if (v6 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v8 = [*(a1 + 48) substringFromIndex:&v6[v7 + 1]];
            [v3 setStringValue:v8];

LABEL_34:
            v2 = v21;
            goto LABEL_35;
          }
        }

        else if ([*(a1 + 40) isEqualToString:@"com.apple.hud-label.metalfx.timing"])
        {
          v9 = [*(a1 + 48) rangeOfString:@"["];
          if (v9 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v19 = [*(a1 + 48) substringWithRange:{0, v9}];
            v12 = [v19 stringByTrimmingCharactersInSet:v4];

            [v12 floatValue];
            [v3 setFloatValue:v20];
            goto LABEL_33;
          }
        }
      }

      v10 = [*(a1 + 48) rangeOfString:@":"];
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = [*(a1 + 48) length];
        while (--v10 >= 1)
        {
          if (([v4 characterIsMember:{objc_msgSend(*(a1 + 48), "characterAtIndex:", v10)}] & 1) == 0)
          {
            while (([v4 characterIsMember:{objc_msgSend(*(a1 + 48), "characterAtIndex:", v10)}] & 1) == 0)
            {
              if (v10-- <= 1)
              {
                goto LABEL_22;
              }
            }

            goto LABEL_20;
          }
        }
      }

      if (!v10)
      {
LABEL_22:
        [v3 setName:*(a1 + 48)];
        v5 = &stru_6ADA0;
        goto LABEL_23;
      }

LABEL_20:
      v12 = [*(a1 + 48) substringFromIndex:v10 + 1];
      v13 = [*(a1 + 48) substringToIndex:v10];
      [v3 setName:v13];
      v14 = [*(*(a1 + 32) + 56) numberFromString:v12];
      v15 = v14;
      if (v14)
      {
        [v3 setIntValue:{objc_msgSend(v14, "intValue")}];
      }

      else
      {
        [v3 setStringValue:v12];
        if (*([v3 descriptor] + 4) == 2)
        {
          if ([v12 isEqualToString:@"D3D12"])
          {
            v16 = *(a1 + 32);
            v17 = 1;
          }

          else
          {
            v18 = [v12 isEqualToString:@"D3D11"];
            v16 = *(a1 + 32);
            if (v18)
            {
              v17 = 2;
            }

            else
            {
              v17 = 0;
            }
          }

          [v16 setGraphicsAPI:v17];
        }
      }

LABEL_33:
      goto LABEL_34;
    }
  }

LABEL_35:
}

id __144___CADeveloperHUDProperties_featureRegisterToggle_title_envVar_description_documtationTitles_documentLinks_options_defaultValue_state_valueRef___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 BOOLValue];
  **(a1 + 32) = result;
  return result;
}

id __76___CADeveloperHUDProperties_captureGPUTrace_capturableObject_timeOut_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isCapturing];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 stopCapture];
  }

  return result;
}

@end