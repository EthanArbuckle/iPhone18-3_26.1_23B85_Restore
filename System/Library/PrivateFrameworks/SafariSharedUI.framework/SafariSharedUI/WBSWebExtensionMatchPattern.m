@interface WBSWebExtensionMatchPattern
+ (id)matchPatternForDomain:(id)a3;
- (BOOL)matchesPattern:(id)a3 options:(unint64_t)a4;
- (id)_descriptionWithScheme:(id)a3;
@end

@implementation WBSWebExtensionMatchPattern

+ (id)matchPatternForDomain:(id)a3
            v9 = {;
            [v3 addObject:v9];
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v4 = [(WBSWebExtensionMatchPattern *)self description];
    v15 = v4;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  }

  return v3;
}

- (id)_descriptionWithScheme:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(WBSWebExtensionMatchPattern *)self host];
  v7 = [(WBSWebExtensionMatchPattern *)self path];
  v8 = [v5 stringWithFormat:@"%@://%@%@", v4, v6, v7];

  return v8;
}

- (BOOL)matchesPattern:(id)a3 options:(unint64_t)a4
{
  v4 = a4;
  webKitMatchPattern = self->_webKitMatchPattern;
  v6 = [a3 _webKitMatchPattern];
  v7 = [(WKWebExtensionMatchPattern *)webKitMatchPattern matchesPattern:v6 options:v4 & 7];

  return v7;
}

@end